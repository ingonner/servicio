<?php
include('dbcon.php');

$result = mysql_query("update alumnos set semestre = semestre +1") or die(mysql_error());

if($result){
header('location:mantenimiento.php');
 }else{
 $xxx = "query failed";
 }



?> 

