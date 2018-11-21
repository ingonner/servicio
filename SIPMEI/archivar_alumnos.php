<?php
include('dbcon.php');
mysql_query("update alumnos set estatus = 'Archivado'") or die(mysql_error());
header('location:alumnos.php');
?>


