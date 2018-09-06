<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id_categoria=$_POST['id_categoria'];

mysql_query("delete from categorias where id_categoria='$id_categoria'")or die(mysql_error());
 
 
header('location:borrar_categoria.php');
}
?>	