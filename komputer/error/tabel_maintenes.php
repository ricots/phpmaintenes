<?php
include 'koneksi.php';
$hobi=array('rusak','baik');
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
 
   <script>
       function cari(){
           //membuat variabel val_cari dan mengisinya dengan nilai pada field cari
           var val_cari = $('#cari').val();
 
           //kode 1
           var request = $.ajax ({
               url : "cari.php",
               data : "cari="+val_cari,
               type : "GET",
               dataType: "html"
           });
 
           //menampilkan pesan Sedang mencari saat aplikasi melakukan proses pencarian
           $('#hasil-cari').html('Sedang Mencari...');
 
           //Jika pencarian selesai
           request.done(function(output) {
               //Tampilkan hasil pencarian pada tag div dengan id hasil-cari
               $('#hasil-cari').html(output);
           });
 
       }
   </script>
   
   
<title>Untitled Document</title>
</head>

<body>
<form action="simpan_maintenes.php" name="postform">
<p align="center"><strong>Tabele Maintenets</strong></p>

<table width="468" border="0">
  <tr>
    <td width="132">Tanggal maintenes</td>
    <td width="7">&nbsp;</td>
    <td width="208">
    <input type="text" id="tgl" name="tgl"  onClick="if(self.gfPop)gfPop.fPopCalendar(document.postform.tgl);return false;"/><a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fPopCalendar(document.postform.tgl);return false;"><img name="popcal" align="absmiddle" style="border:none" src="calender/calender.jpeg" width="34" height="29" border="0" alt=""></a><a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fPopCalendar(document.postform.tgl);return false;" >

    </td>
    
    <td width="103"><input type="submit" name="button" id="button" value="Cari" /></td>
  </tr>
</table>

<table width="880" border="1">
  <tr>
    <td width="59">No</td>
    <td width="126">Tanggal</td>
    <td width="79">Asisten</td>
    <td width="112">Nama Ruang</td>
    <td width="129">Ram</td>
    <td width="14"></td>
    <td width="109">Hdd</td>
    <td width="14"></td>
    <td width="180">kondisi</td>
  </tr>
  <tr>
  
  <?php
			$query=mysql_query("select * from ruang_tindakan") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
    <td><?php echo $no++; ?></td>
    <td><?php echo $lihat['tanggal'] ?></td>
    <td><?php echo $lihat['nama_asisten'] ?></td>
    <td><?php echo $lihat['nama_ruang'] ?></td>
    <td><?php echo $lihat['ram'] ?></td>
    <td></td>
    <td><?php echo $lihat['hdd'] ?></td>
    <td></td>
     <td>
    <input type="checkbox" name="tempat[]" id="tempat[]" value="Baik"/>
    Baik
    <input type="checkbox" name="tempat[]" id="tempat[]" value="Rusak"/>Rusak<br/>
    </td>
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
    <td width="180"><input type="submit" name="button2" id="button2" value="Submit" /></td>
  </tr>
</table>


</form>
</body>
</html>

<iframe width=174 height=189 name="gToday:normal:calender/agenda.js" id="gToday:normal:calender/agenda.js" src="calender/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>