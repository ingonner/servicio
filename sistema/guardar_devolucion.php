<?php 
include('dbcon.php');

$id=$_GET['id'];
$id_articulo = $_GET['id_articulo'];

mysql_query("update prestamos LEFT JOIN detalle_prestamos on prestamos.id_prestamo = detalle_prestamos.id_prestamo  set estatus_prestamo='devuelto',fecha_entregado = NOW() where prestamos.id_prestamo='$id' and detalle_prestamos.id_articulo = '$id_articulo'")or die(mysql_error());						
 header('location:ver_prestamo.php');

?>	