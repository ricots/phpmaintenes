<?php
mysql_connect("localhost", "root", "");
mysql_select_db("maintenes");

$sql = mysql_query("select*from tbl_komputer where id_komputer = '$_POST[username]';");
$cocok = mysql_num_rows($sql);

echo $cocok;
?>