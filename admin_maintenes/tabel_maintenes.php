<?php
include 'koneksi.php';

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="development-bundle/jquery-1.8.0.min.js"></script>
    <script src="development-bundle/ui/ui.core.js"></script>
    <script src="development-bundle/ui/ui.datepicker.js"></script>
    <script src="development-bundle/ui/i18n/ui.datepicker-id.js"></script>
 
  <script src="jquery-1.11.0.min.js"></script>
<title>Untitled Document</title>
</head>

<body>
<form action="home.php?m=content&p=cari_maintenes" name="postform" method="post">
<table width="468" border="0">
  <tr>
    <td width="132">Tanggal maintenes</td>
    <td width="7">&nbsp;</td>
    <td width="151">
   <input type="date" name="bday">

    </td>
    
    <td width="160"><input type="submit" name="button" id="button" value="Cari" /></td>
  </tr>
</table>
<br />

<table width="880" border="1">
  <tr>
    <td width="59">No</td>
    <td width="126">Tanggal</td>
    <td width="79">Asisten</td>
    <td width="112">Nama Ruang</td>
    <td width="112">id komputer</td>
    <td width="129">Ram</td>
    
    <td width="109">Hdd</td>
    
    <td width="180">kondisi</td>
    <td width="180">tindakan</td>
  </tr>
  <tr>
  
  <?php
			$query=mysql_query("select * from maintenes_ruang") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
    <td><?php echo $no++; ?></td>
    <td><?php echo $lihat['tanggal'] ?></td>
    <td><?php echo $lihat['id_tehnisi'] ?></td>
    <td><?php echo $lihat['nama_ruang'] ?></td>
      <td><?php echo $lihat['id_komputer'] ?></td>
    <td><?php echo $lihat['ram'] ?></td>
    
    <td><?php echo $lihat['hdd'] ?></td>
    
    <td>
   <?php echo $lihat['kondisi'] ?>
    </td>
    
    <td><?php echo $lihat['tindakan'] ?></td>
   
  </tr>
  <?php
			}
		?>
</table>

<table width="880" border="0">
  <tr>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="332">&nbsp;</td>
    <td width="180">&nbsp;</td>
  </tr>
</table>


</form>
</body>
</html>

<iframe width=174 height=189 name="gToday:normal:calender/agenda.js" id="gToday:normal:calender/agenda.js" src="calender/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>