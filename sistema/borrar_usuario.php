<?php
include('dbcon.php');

$id=$_GET['id'];

mysql_query("delete from usuarios where user_id='$id'") or die(mysql_error());

header('location:usuarios.php');
?>