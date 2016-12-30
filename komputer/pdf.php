<!DOCTYPE html>
<html>
<head>
<title></title>

</head>
<body>	
<?php
 // Define relative path from this script to mPDF
 $nama_dokumen='PDF With MPDF'; //Beri nama file PDF hasil.
define('_MPDF_PATH','mpdf60/');
include(_MPDF_PATH . "mpdf.php");
$mpdf=new mPDF('utf-8', 'A4'); // Create new mPDF Document
 
//Beginning Buffer to save PHP variables and HTML tags
ob_start(); 
?>
<!--sekarang Tinggal Codeing seperti biasanya. HTML, CSS, PHP tidak masalah.-->
<!--CONTOH Code START-->

<p align="center"><strong>
Hasil Maintenes Hardware
</strong></p><br/>
<table border=1 align="center" width="704">
<tr>

<td width="108" bgcolor="#FFCC66">Tanggal</td>
<td width="108" bgcolor="#FFCC66">Nama Ruang</td>
<td width="132" bgcolor="#FFCC66">Id Komputer</td>
<td width="292" bgcolor="#FFCC66">Spesifikasi</td>
<td width="132" bgcolor="#FFCC66">Hdd</td>
<td width="292" bgcolor="#FFCC66">Ram</td>
<td width="132" bgcolor="#FFCC66">Kondisi</td>
<td width="292" bgcolor="#FFCC66">Tindakan</td>
</tr>
<?php 
include "koneksi.php";
$tgl = $_POST['tanggal'];
$id_ruang = $_POST['id_ruang'];
$sql=mysql_query("SELECT * FROM maintenes_tehnisi where  id_ruang = '$id_ruang' and tanggal ='$tgl' ") or die(mysql_error());
$no=1;										//membuat nomor pada tabel
			while($data=mysql_fetch_array($sql)){
//while($data=mysql_fetch_assoc($sql)){
echo'<tr>

<td>'.$data[tanggal].'</td>
<td>'.$data[nama_ruang].'</td>
<td>'.$data[id_komputer].'</td>
<td>'.$data[spesifikasi].'</td>
<td>'.$data[hdd].'</td>
<td>'.$data[ram].'</td>
<td>'.$data[kondisi].'</td>
<td>'.$data[tindakan].'</td>
</tr>';

}
?>
</table>

<!--CONTOH Code END-->
 
<?php
$html = ob_get_contents(); //Proses untuk mengambil hasil dari OB..
ob_end_clean();
//Here convert the encode for UTF-8, if you prefer the ISO-8859-1 just change for $mpdf->WriteHTML($html);
$mpdf->WriteHTML(utf8_encode($html));
$mpdf->Output($nama_dokumen.".pdf" ,'I');
exit;
?>
</body>
</html>