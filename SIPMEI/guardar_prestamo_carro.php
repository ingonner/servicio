	<?php
 	include('dbcon.php');
	
 	date_default_timezone_set('America/Mexico_City');

    $id_alumno = $_POST['id_alumno'];
	$fecha_devolucion = $_POST['fecha_devolucion'];
	$fecha_prestamo = date('Y-m-d h:i:s a', time());
	
	mysql_query("insert into prestamos (id_alumno,fecha_prestamo,fecha_devolucion) values ('$id_alumno','$fecha_prestamo','$fecha_devolucion')")or die(mysql_error());

       
    //  sacar el ID del ultimo prestamo
	$query = mysql_query("select * from prestamos order by id_prestamo DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);
	$id_prestamo  = $row['id_prestamo']; 
    

	//Contar cuantos articulos hay en el carrito, para el FOR
    $cuenta = mysql_query("SELECT count(*) contar FROM cart_items")or die(mysql_error());
    $row = mysql_fetch_array($cuenta);
	$contar  = $row['contar']; 
	$N = $contar;


for($i=0; $i < $N; $i++) {

 	$query = mysql_query("select id, product_id, quantity from cart_items order by id DESC")or die(mysql_error());
	$row = mysql_fetch_array($query);
    
	//trae datos del carrito
    $id = $row['id'];
	$id_producto = $row['product_id']; 
    $cantidad = $row['quantity'];


    //inserta en detalle_prestamos las filas
	 mysql_query("insert detalle_prestamos (id_articulo,cantidad,id_prestamo,estatus_prestamo) values('$id_producto','$cantidad','$id_prestamo','pendiente')")or die(mysql_error());
    
    //va borrando las filas, para insertar la siguiente en el siguiente ciclo
    mysql_query("DELETE FROM `cart_items` WHERE id='$id'")or die(mysql_error());
    

}


        
header("location: pendientes.php");  
?>
	
	

	
	