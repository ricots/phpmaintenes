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
<style>
 .txt1{
 color:#F00;
 }
 </style>
</head>

<body>
<form action="update_tindakan.php" name="postform" method="post"  id="postform">
<p align="center"><strong>Tabel Tindakan</strong></p>

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
			$tgl = @$_POST['tgl'];
$query = mysql_query("select * from maintenes_tehnisi where kondisi = 'rusak' and tanggal ='$tgl'");
	if(mysql_num_rows($query)){
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
       <input type="hidden" name="tanggal" value="<?php echo $lihat['tanggal'] ?>" />
       <input type="hidden" name="id_ruang" value="<?php echo $lihat['id_ruang'] ?>" />
                <input type="hidden" name="id_komputer[]" value="<?php echo $lihat['id_komputer'] ?>" />

    <td><?php echo $no++; ?></td>
    <td><?php echo $lihat['tanggal'] ?></td>
    <td name="id_tehnisi"> <?php echo $lihat['id_tehnisi'] ?></td>
    <td name="nama_ruang"><?php echo $lihat['id_ruang'] ?></td>
      <td name="id_komputer"><?php echo $lihat['id_komputer'] ?></td>
    <td name="ram"><?php echo $lihat['ram'] ?></td>
    
    <td name="hdd"><?php echo $lihat['hdd'] ?></td>
    
    <td>
<?php echo $lihat['kondisi'] ?>
</td>
<td><label for="textarea"></label>
  <textarea name="tindakan[]" id="tindakan" cols="45" rows="5"></textarea></td>
</tr>


<?php
}
?>
</table>
<br />
<table width="880" border="0" align="right">
  <tr>
    <td align="right"><button style="margin-left:5%" name="cetak" id="cetak" onClick="document.postform.action = 'pdf.php'; document.postform.target='_blank'; document.postform.cetak(); return false;">simpan pdf</button>
    <input type="submit" name="submit" id="submit" value="Submit" onclick="document.postform.action = 'update_tindakan.php'; document.postform.target='_self'; document.postform.Submit(); return false;"/>
    </td>
  </tr>
</table>

<?php
}else{
echo '<td class="txt1" rowspan="0" colspan="9" align="center">pencarian tidak di temukan</td>';
}
?>
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
 <script>
		function print_pdf(){
			window.open("pdf.php","_blank");
		}
	</script>
    
<iframe width=174 height=189 name="gToday:normal:calender/agenda.js" id="gToday:normal:calender/agenda.js" src="calender/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>