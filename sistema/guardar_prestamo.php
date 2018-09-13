	<?php
 	include('dbcon.php');
	

	$id=$_POST['selector'];

    $cantidad=$_POST['cantidad'];
 	$id_alumno = $_POST['id_alumno'];
	$fecha_devolucion = $_POST['fecha_devolucion'];

	if ($id == '' ){ 
        echo ("<br><br>ERROR, NO SELECCIONASTE NINGUN ARTICULO");        
	//header("location: prestamo.php");
	?>
	

	<?php }else{

	mysql_query("insert into prestamos (id_alumno,fecha_prestamo,fecha_devolucion) values ('$id_alumno',NOW(),'$fecha_devolucion')")or die(mysql_error());
	$query = mysql_query("select * from prestamos order by id_prestamo DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);
	$id_prestamo  = $row['id_prestamo']; 
	

$N = count($id);
for($i=0; $i < $N; $i++)
{
	 mysql_query("insert detalle_prestamos (id_articulo,cantidad,id_prestamo,estatus_prestamo) values('$id[$i]','$cantidad[$i]','$id_prestamo','pendiente')")or die(mysql_error());

}

    
        
header("location: prestamo.php");
}  
?>
	
	

	
	