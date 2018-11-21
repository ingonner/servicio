<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$nombre_articulo=$_POST['nombre_articulo'];
$id_categoria=$_POST['id_categoria'];
$marca=$_POST['marca'];
$ejemplares=$_POST['ejemplares'];
$detalle=$_POST['detalle'];
$estatus=$_POST['estatus'];

    
if($marca == ''){
    $marca = 'No registrado';
}
    
if($ejemplares == ''){
    $ejemplares= '1';
}

if($detalle== ''){
    $detalle = 'No registrado';
}

if($estatus == ''){
    $estatus = 'Nuevo';
}

mysql_query("update articulos set nombre_articulo='$nombre_articulo',id_categoria='$id_categoria',marca='$marca'
,ejemplares = '$ejemplares',detalle = '$detalle',estatus='$estatus' where id_articulo='$id'")or die(mysql_error());
								
								
 header('location:articulos.php');
}
?>	