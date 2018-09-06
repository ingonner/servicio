<?php
include('dbcon.php');
mysql_query("update articulos set estatus = 'Archivado'") or die(mysql_error());
header('location:articulos.php');
?>
