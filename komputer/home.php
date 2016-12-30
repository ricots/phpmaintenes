<?php

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>Maintenes lab Komputer</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]><script type="text/javascript" src="unitpngfix.js"></script><![endif]-->
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="logo"><a href="http://all-free-download.com/free-website-templates/"></a></div>
  </div>
  <div id="menu">
    <ul>
      <li class="selected"><a href="home.php">home</a></li>
      <li><a href="home.php?m=content&p=tabel_komputer">data komputer</a></li>
       <li><a href="home.php?m=content&p=tabel_software">data software</a></li>
      <li><a href="home.php?m=content&p=tabel_maintenes">Tabel Maintenes</a></li>
      <li><a href="home.php?m=content&p=tbl_software">Tabel Maintenes software</a></li>
      <li><a href="home.php?m=content&p=tabel_tindakan">Tabel Tindakan</a></li>
      <li><a href="logout.php">Keluar</a></li>
      
      
    </ul>
  </div>
  <div class="tab_bg">
    <div class="tab_left"> <img src="images/big_icon.png" alt="" border="0" class="big_icon" /> </div>
    <div class="middle_text">
      <h3>Laboratorium Universitas Kanjuruhan Malang</h3>
      <p> Laboratorium Internet dan Aplikasi Malang memiliki 3 lab dan Tiap lab memiliki asisten yang melakukan tugas seperti memaintens komputer </p>
    </div>
    <div class="tabs"></div>
    <div class="clear"></div>
  </div>
  <div class="center_content">
  
           
             <?php
        if (!isset($_GET['p'])) {
                include 'prakata.php';
            } else {
                $page = $_GET['p'];
                $modul = $_GET['m'];
                include  '/' . $page . ".php";
            }
            ?>
 
    <div class="clear"></div>
  </div>
  <div id="footer">
  
   
  </div>
</div>
<div align=center>Copyright pbd 2015</a></div></body>
</html>

