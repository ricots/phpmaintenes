<form  method="post" name="postform" id="postform">
<table width="521" border="0">
  <tr>
    <td width="132"></td>
    <td width="7">&nbsp;</td>
    <td width="208">
    

    </td>
    
    <td width="156"><input type="submit" name="submit" id="submit" value="back" onclick="document.postform.action = 'home.php?m=content&p=tabel_maintenes'; document.postform.target='_self'; document.postform.Submit(); return false;"/>
      <button style="margin-left:5%" name="cetak" id="cetak" onClick="document.postform.action = 'pdf.php'; document.postform.target='_blank'; document.postform.cetak(); return false;">simpan pdf</button></td>
  </tr>
</table>
<br />
<table border="1" align="center" width="1000">
<tr>
<td>No</td>
			<td>Tanggal</td>
			<td>Asisten</td>
            <td>Nama Ruang</td>
            <td>Id komputer</td>
			<td>Ram</td>
			<td>Hdd</td>
			<td>Kondisi</td>
			<td>Tindakan</td>
</tr>
<tr>
<?php
include 'koneksi.php';
$tgl = @$_POST['bday'];
$query = mysql_query("select * from maintenes_tehnisi where  tanggal ='$tgl'");
	if(mysql_num_rows($query)){
			$no=1;										
			while($data=mysql_fetch_array($query)){
?>
 <input type="hidden" name="id_ruang" value="<?php echo $data['id_ruang'] ?>" /> 
               <input type="hidden" name="tanggal" value="<?php echo $data['tanggal'] ?>" />
<td><?php echo $no++ ?></td>
<td><?php echo $data['tanggal'] ?></td>
<td><?php echo $data['nama_tehnisi'] ?></td>
<td><?php echo $data['id_ruang'] ?></td>
<td><?php echo $data['id_komputer'] ?></td>
<td><?php echo $data['ram'] ?></td>
<td><?php echo $data['hdd'] ?></td>
<td><?php echo $data['kondisi'] ?></td>
<td><?php echo $data['tindakan'] ?></td>
</tr>
<?php
  }
  ?>
</table>
<?php
}
?>
</form>
