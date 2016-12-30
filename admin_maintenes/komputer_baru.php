<?php  
 
/*  menentukan server */
    mysql_connect("localhost","root","");
/*  menentukan database */
        mysql_select_db("maintenes");
//      if(isset($_POST['id'])){
    $result = mysql_query("select * from tbl_ruang");
        $jsArray = "var buku_Name = new Array();\n";  
        while ($row = mysql_fetch_array($result)) {      
        $jsArray .= "buku_Name['" . $row['id_ruang'] . "'] = {name:'" . addslashes($row['nama_ruang'])."'};\n";    
    }
    ?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="jquery-1.4.js"></script>
  <script type="text/javascript" src="jquery.validate.js"></script>

<style type="text/css">

.form-div .label {
  display: block;
  float: left;
  width: 150px;
  text-align: right;
  margin-right: 5px;
}
.form-div .form-row {
  padding: 5px 0;
  clear: both;
  width: 700px;
}

.form-div label.error {
  width: 250px;
  display: block;
  float: left;
  color: red;
  padding-left: 10px;
  background: url(unvalid.gif) no-repeat;
}
.form-div input {
  width: 180px;
  float: left;
  font-family:Verdana, Geneva, Arial, Helvetica, sans-serif;
  font-size:11px;
}
.form-div label.valid {
  width: 24px;
  background: url(true.png) center no-repeat;
  display: inline-block;
  text-indent: -9999px;
}

.error{background: #FFEBE8;}

</style>

<script>
  $(document).ready(function()
  {
     $("#id_komputer").change(function()
     {  
        var username = $("#id_komputer").val();
        $("#pesan").html("<img src='loading.gif'>Cek username ...");

        if(username=='')
        {
          $("#pesan").html('<img src="salah.png"> username tidak boleh kosong');
          $("#id_komputer").css('border', '3px #C33 solid');
        }
        else
        $.ajax({type: "POST", url: "validation.php", data: "username="+username, success:function(data)
        { 
        	if(data==0)
        	  {
        	  	  $("#pesan").html('<img src="true.png">');
                $("#id_komputer").css('border', '3px #090 solid');
            }
              else
              {
              	$("#pesan").html('<img src="salah.png"> username telah digunakan');
              	$("#id_komputer").css('border', '3px #C33 solid');
              }
              
        } });
     })
  });
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
 
</head>
 
<body>

<form action="home.php?m=content&p=simpan_komputer" method="post" id="frm1">
<table width="497" border="0">
  <tr>
    <td width="105" height="29">id ruang</td>
    <td width="8">&nbsp;</td>
    <td width="363"><label for="select"></label>
      <?php  echo '<select name="id" id="select" onchange="changeValue(this.value)"  onClick="pilihKota()">
        <option>inet 1</option>
        <option>inet 2</option>
        <option>apli 1</option>
        <option>apli 2</option>
        <option>apli 3</option>
      </select></td>';
          ?></td>
  </tr>
  <tr>
    <td height="31">nama ruang</td>
    <td>&nbsp;</td>
    <td><label for="textfield"></label>
      <input type="text"  readonly="readonly" name="judul" id="buku_name" /></td>
  </tr>
  <tr>
  
   
   <td height="29">id komputer</td>
    <td>&nbsp;</td>
    <td><label for="textfield2"></label>
      <input type="text" name="id_komputer" id="id_komputer" 
        /><?php
mysql_connect("localhost", "root", "");
mysql_select_db("maintenes");

    
	if (isset($_POST['id_komputer'])){
    $cekuser = mysql_num_rows(mysql_query("select id_komputer from tbl_komputer where id_komputer = '$_POST[id_komputer]' "));

	}
?><span id="pesan"></span></td>
      
  </tr>
  <tr>
    <td>spesifikasi</td>
    <td>&nbsp;</td>
    <td><label for="textarea"></label>
      <textarea name="spesifikasi" id="textarea" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>hdd</td>
    <td>&nbsp;</td>
    <td><label for="textarea2"></label>
      <textarea name="hdd" id="textarea2" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>ram</td>
    <td>&nbsp;</td>
    <td><label for="textarea3"></label>
      <textarea name="ram" id="textarea3" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" name="submit" id="submit" value="simpan" />
      <input type="reset" name="button2" id="button2" value="hapus" /></td>
  </tr>
</table>

</form>
</body>
</html>
 
 
 <script type="text/javascript">    
    <?php echo $jsArray; ?>
 function changeValue(id){  
    document.getElementById('buku_name').value = buku_Name[id].name;    /*  .name merupakan nama variabel untuk database*/
	
           /*  .pene merupakan nama variabel untuk database*/
       
    };  
    </script>
    
    <script type="text/javascript">
function pilihKota()
{
  var objfrm = document.getElementById("frm1");
  var idx_opsi = objfrm.id.selectedIndex;
  //alert('idx ' + idx_opsi );
  objfrm.id_komputer.value= objfrm.id.options[idx_opsi].text;
}
</script>
