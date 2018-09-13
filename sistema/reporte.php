<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
				<div class="span12">		
						<div class="alert alert-info"><strong>Historial de prestamos</strong></div>
                             <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Imprimir reporte</a>
								</div>
                                <thead>
                                    <tr>
                                        <th>Articulo</th>                                 
                                        <th>Alumno</th>                                 
                                        <th>Carrera</th>                                 
                                        <th>Fecha del prestamo</th>                                 
                                        <th>Fecha de devolución</th>                                
                                        <th>Fecha de entregado</th>

                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysql_query("select cantidad, prestamos.id_prestamo, articulos.id_articulo, id_detalle_prestamos, nombre_articulo, nombre, apellido, carrera,
                                  fecha_prestamo, prestamos.fecha_devolucion, fecha_entregado
                                  from prestamos
								LEFT JOIN alumnos ON prestamos.id_alumno = alumnos.id_alumno
								LEFT JOIN detalle_prestamos ON prestamos.id_prestamo = detalle_prestamos.id_prestamo
								LEFT JOIN articulos on detalle_prestamos.id_articulo =  articulos.id_articulo 
								where detalle_prestamos.estatus_prestamo = 'devuelto' ORDER BY prestamos.id_prestamo DESC
								  ")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_prestamo'];
									$id_articulo=$row['id_articulo'];
									$id_detalle_prestamos=$row['id_detalle_prestamos'];
				
									?>
									<tr class="del<?php echo $id ?>">
									
									                              
                                    <td>(<?php echo $row['cantidad']; ?>) <?php echo $row['nombre_articulo']; ?></td>
                                    <td><?php echo $row['nombre']." ".$row['apellido']; ?></td>
                                    <td><?php echo $row['carrera']; ?></td>
									<td><?php echo $row['fecha_prestamo']; ?></td> 
                                    <td><?php echo $row['fecha_devolucion']; ?> </td>
									<td><?php echo $row['fecha_entregado']; ?> </td>
                                									 
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							

			</div>		
	
<script>		
$(".uniform_on").change(function(){
    var max= 10;
    if( $(".uniform_on:checked").length == max ){
	
        $(".uniform_on").attr('disabled', 'disabled');
		         alert('10 articulos son permitidos por prestamo');
        $(".uniform_on:checked").removeAttr('disabled');
		
    }else{

         $(".uniform_on").removeAttr('disabled');
    }
})
</script>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>	