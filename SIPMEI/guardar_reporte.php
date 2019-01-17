<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
    
    
$problema=$_POST['problema'];
$accion_alumno=$_POST['accion_alumno'];
$id=$_GET['id']; //id_detalle_prestamos
$id_articulo = $_GET['id_articulo'];
$detalle = $_POST['detalle'];    
$fecha_actual = date('Y-m-d h:i:s a', time());
    
    
    
    
if($accion_alumno == 'Si'){
   mysql_query("update alumnos LEFT JOIN prestamos on prestamos.id_alumno = alumnos.id_alumno  set alumnos.estatus='Bloqueado' where prestamos.id_prestamo='$id' ")or die(mysql_error()); 
    header('location:pendientes.php');
  }   
    

if($problema < 2 ) {
    //echo("Dañado");
    
     mysql_query("INSERT INTO `articulos_danados`(`id_articulo`,`fecha_devolucion`,`detalle`,`id_alumno`) VALUES ('$id_articulo', '$fecha_actual' ,'$detalle',(SELECT alumnos.id_alumno from alumnos LEFT JOIN prestamos on prestamos.id_alumno = alumnos.id_alumno where prestamos.id_prestamo='$id'))")or die (mysql_error());    
    
     mysql_query("update prestamos LEFT JOIN detalle_prestamos on prestamos.id_prestamo = detalle_prestamos.id_prestamo  set estatus_prestamo='devuelto',fecha_entregado = '$fecha_actual' where prestamos.id_prestamo='$id' and detalle_prestamos.id_articulo = '$id_articulo'")or die(mysql_error());						
    header('location:pendientes.php');
}     
    
if($problema > 1 ) {
    //echo("Perdido o no devuelto");
    
     mysql_query("INSERT INTO `articulos_perdidos`(`id_articulo`,`fecha_extravio`, `id_alumno`) VALUES ('$id_articulo','$fecha_actual',(SELECT alumnos.id_alumno from alumnos LEFT JOIN prestamos on prestamos.id_alumno = alumnos.id_alumno where prestamos.id_prestamo='$id'))")or die (mysql_error());  
    
     mysql_query("UPDATE articulos SET ejemplares=ejemplares-1 WHERE id_articulo = '$id_articulo'")or die (mysql_error());     
    
    mysql_query("update prestamos LEFT JOIN detalle_prestamos on prestamos.id_prestamo = detalle_prestamos.id_prestamo  set estatus_prestamo='devuelto',fecha_entregado = '$fecha_actual' where prestamos.id_prestamo='$id' and detalle_prestamos.id_articulo = '$id_articulo'")or die(mysql_error());						
    header('location:pendientes.php');
}   
    
 

}
?>	