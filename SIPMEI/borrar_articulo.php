<?php
include('dbcon.php');
$id=$_GET['id'];
mysql_query("update articulos set estatus = 'Archivado' where id_articulo='$id'")or die(mysql_error());
header('location:articulos.php');
?>