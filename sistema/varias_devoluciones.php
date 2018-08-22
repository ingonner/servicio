	<?php
 	include('dbcon.php');
	
	$id_articulo=$_POST['selector'];
 	$id_detalle_prestamos = $_POST['id_detalle_prestamo'];

	if ($id == '' ){ 
	header("location: prestamo.php");
	?>
	

	<?php }else{
	
//alert("Hola");

	mysql_query("insert into prestamos (id_alumno,fecha_prestamo,fecha_devolucion) values ('$id_alumno',NOW(),'$fecha_devolucion')")or die(mysql_error());
        
	$query = mysql_query("select * from prestamos order by id_prestamo DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);
	$id_prestamo  = $row['id_prestamo']; 
	

$N = count($id);
for($i=0; $i < $N; $i++)
{
	 mysql_query("insert detalle_prestamos (id_articulo,id_prestamo,estatus_prestamo) values('$id[$i]','$id_prestamo','pendiente')")or die(mysql_error());

}
header("location: prestamo.php");
}  
?>
	