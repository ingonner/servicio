	<?php
 	include('dbcon.php');
	

    $id_alumno = $_POST['id_alumno'];
	$fecha_devolucion = $_POST['fecha_devolucion'];

    $query = mysql_query("select id, product_id, quantity from cart_items order by id DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);

    $id = $row['id'];
	$id_producto = $row['product_id']; 
    $cantidad = $row['quantity'];



	mysql_query("insert into prestamos (id_alumno,fecha_prestamo,fecha_devolucion) values ('$id_alumno',NOW(),'$fecha_devolucion')")or die(mysql_error());
        
        
	$query = mysql_query("select * from prestamos order by id_prestamo DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);
	$id_prestamo  = $row['id_prestamo']; 
    
    $cuenta = mysql_query("SELECT count(*) contar FROM cart_items")or die(mysql_error());
    $row = mysql_fetch_array($cuenta);
	$contar  = $row['contar']; 

$N = $contar;
for($i=0; $i < $N; $i++)
{
	 mysql_query("insert detalle_prestamos (id_articulo,cantidad,id_prestamo,estatus_prestamo) values('$id','$cantidad','$id_prestamo','pendiente')")or die(mysql_error());
    
    mysql_query("DELETE FROM `cart_items` WHERE id='$id'")or die(mysql_error());
    

}


        
header("location: pendiente.php");  
?>
	
	

	
	