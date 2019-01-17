<?php 
include('dbcon.php');
date_default_timezone_set('America/Mexico_City');

$id=$_GET['id'];
$id_articulo = $_GET['id_articulo'];
$fecha_actual = date('Y-m-d h:i:s a', time());

mysql_query("update prestamos LEFT JOIN detalle_prestamos on prestamos.id_prestamo = detalle_prestamos.id_prestamo  set estatus_prestamo='devuelto',fecha_entregado = '$fecha_actual' where prestamos.id_prestamo='$id' and detalle_prestamos.id_articulo = '$id_articulo'")or die(mysql_error());						
 header('location:pendientes.php');

?>	