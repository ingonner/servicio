<?php
include('dbcon.php');
$id=$_GET['id'];
mysql_query("update alumnos set estatus = 'Archivado' where id_alumno='$id'") or die(mysql_error());
header('location:alumnos.php');
?>
