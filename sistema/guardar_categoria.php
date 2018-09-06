<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$nombre=$_POST['nombre'];

mysql_query("insert into categorias(nombre_categoria) values('$nombre')")or die(mysql_error());
 
 
header('location:nueva_categoria.php');
}
?>	