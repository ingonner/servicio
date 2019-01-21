<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
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
 
 /*    
mysql_query("insert into articulos  (nombre_articulo,id_categoria,marca,ejemplares,detalle,fecha_agregado,estatus)
 values('$nombre_articulo','$id_categoria','$marca','$ejemplares','$detalle',NOW(),'$estatus')")or die(mysql_error());
*/ 
 

   
mysql_query("insert into articulos  (nombre_articulo,id_categoria,marca,ejemplares,detalle,fecha_agregado,estatus)
 values('$nombre_articulo','3','No registrado','150','$nombre_articulo',NOW(),'Nuevo')")or die(mysql_error());


 
header('location:nuevo_articulo.php');
}
?>	