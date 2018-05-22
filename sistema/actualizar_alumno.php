<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$genero=$_POST['genero'];
$num_control=$_POST['num_control'];
$carrera=$_POST['carrera'];
$celular=$_POST['celular'];
$semestre=$_POST['semestre'];
$estatus=$_POST['estatus'];

mysql_query("update alumnos set nombre='$nombre',apellido='$apellido',genero='$genero',num_control = '$num_control',carrera = '$carrera',celular = '$celular',semestre = '$semestre',estatus = '$estatus' where id_alumno='$id'")or die(mysql_error());
								
								
header('location:alumnos.php');
}
?>	