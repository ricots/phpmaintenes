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
<script src="development-bundle/jquery-1.8.0.min.js"></script>
    <script src="development-bundle/ui/ui.core.js"></script>
    <script src="development-bundle/ui/ui.datepicker.js"></script>
    <script src="development-bundle/ui/i18n/ui.datepicker-id.js"></script>
 
  <script src="jquery-1.11.0.min.js"></script>
 
   <script>
  /*     function cari(){
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
 
       }*/
   </script>
   
   
<title>Untitled Document</title>
</head>

<body>
<form action="simpan_maintenes.php" name="postform" method="post">
<p align="center"><strong>Tabele Maintenets</strong></p>


<table width="880" border="1">
  <tr>
    <td width="59">No</td>
    <td width="126">Tanggal</td>
    <td width="79">Asisten</td>
    <td width="112">Nama Ruang</td>
    <td width="112">id komputer</td>
    <td width="129">Spesifikasi</td>
    <td width="129">Ram</td>
    <td width="129">Hdd</td>
    <td width="160">kondisi</td>
  </tr>
  <tr>
  
  <?php
			$query=mysql_query("select * from ruang_komputer where id_tehnisi = '". $_SESSION["login_user"] ."'") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
                <input type="hidden" name="id_komputer[]" value="<?php echo $lihat['id_komputer'] ?>" />

    <td><?php echo $no++; ?></td>
    <td><?php echo date('Y-m-d');?></td>
    <td name="id_tehnisi"> <?php echo $lihat['id_tehnisi'] ?></td>
    <td name="nama_ruang"><?php echo $lihat['id_ruang'] ?></td>
      <td name="id_komputer"><?php echo $lihat['id_komputer'] ?></td>
      <td name="id_komputer"><?php echo $lihat['spesifikasi'] ?></td>
    <td name="ram"><?php echo $lihat['ram'] ?></td>
    
    <td name="hdd"><?php echo $lihat['hdd'] ?></td>
    
    <td>
<?php
$kondisi=array('baik','rusak');
foreach($kondisi as $k)
echo "<input type='checkbox' name='kondisi[{$lihat['id_komputer']}]' value='{$k}|{$lihat['id_ruang']}|{$lihat['id_komputer']}|".date('Y-m-d')."' />{$k}\n";
?>
</td>
</tr>
<?php
}
?>
<tr>
<td colspan="8">&nbsp;</td>
<td width="180"><input type="submit" name="button2" id="button2" value="Submit" /></td>
</tr>
</table>

<table width="880" border="0">
  <tr>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="65">&nbsp;</td>
    <td width="332">&nbsp;</td>
    
  </tr>
</table>


</form>
</body>
</html>

<iframe width=174 height=189 name="gToday:normal:calender/agenda.js" id="gToday:normal:calender/agenda.js" src="calender/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>