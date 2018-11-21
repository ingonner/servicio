<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$genero=$_POST['genero'];
$num_control=$_POST['num_control'];
$carrera=$_POST['carrera'];
$celular=$_POST['celular'];
$semestre=$_POST['semestre'];



								
mysql_query("insert into alumnos(nombre,apellido,genero,num_control,carrera,celular,semestre,estatus) values('$nombre','$apellido','$genero','$num_control','$carrera','$celular','$semestre','Activo')")or die(mysql_error());
 
 
header('location:alumnos.php');
}
?>	