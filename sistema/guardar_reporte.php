<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$problema=$_POST['problema'];
$accion_alumno=$_POST['accion_alumno'];



								
mysql_query("insert into alumnos(nombre,apellido,genero,num_control,carrera,celular,semestre,estatus) values('$nombre','$apellido','$genero','$num_control','$carrera','$celular','$semestre','Activo')")or die(mysql_error());
 
 
header('location:alumnos.php');
}
?>	