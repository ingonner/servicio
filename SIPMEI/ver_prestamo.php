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
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Imprimir</a>
								</div>
                                    <thead>
                                    <tr>
                                        <th>Nombre del articulo</th>                                 
                                        <th>Alumno</th>                                 
                                        <th>Carrera</th>                                 
                                        <th>Fecha de prestamo</th>                                 
                                        <th>Fecha de devolución</th>                             
                                        <th>Fecha de entregado</th>
										<th>Estatus del prestamo</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysql_query("select prestamos.id_prestamo, detalle_prestamos.id_articulo, id_detalle_prestamos, nombre_articulo, nombre, apellido, carrera, fecha_prestamo, prestamos.fecha_devolucion, detalle_prestamos.fecha_entregado, detalle_prestamos.estatus_prestamo 
                                  from prestamos
								LEFT JOIN alumnos ON prestamos.id_alumno = alumnos.id_alumno
								LEFT JOIN detalle_prestamos ON prestamos.id_prestamo = detalle_prestamos.id_prestamo
								LEFT JOIN articulos on detalle_prestamos.id_articulo =  articulos.id_articulo
								ORDER BY prestamos.id_prestamo DESC")or die(mysql_error());
                                    
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_prestamo'];
									$id_articulo=$row['id_articulo'];
									$id_detalle_prestamos=$row['id_detalle_prestamos'];	
                                  	?>
                                    
									<tr class="del<?php echo $id ?>">
																		                              
                                    <td><?php echo $row['nombre_articulo']; ?></td>
                                    <td><?php echo $row['nombre']." ".$row['apellido']; ?></td>
                                    <td><?php echo $row['carrera']; ?></td>
                                        
									<td><?php echo $row['fecha_prestamo']; ?></td> 
                                    <td><?php echo $row['fecha_devolucion']; ?> </td>                                        
									<td><?php echo $row['fecha_entregado']; ?> </td>                                        
									<td><?php echo $row['estatus_prestamo'];?></td>
                                        
									<td> <a rel="tooltip"  title="Marcar como entregado" id="<?php echo $detalle_prestamos; ?>" href="#devolucion<?php echo $id_detalle_prestamos; ?>" data-toggle="modal"    class="btn btn-success"><i class="icon-check icon-large"></i>Entreg.</a>
                                    <?php include('modal_devolver.php'); ?> 
									 
                                    </tr>
                                    
                                    
                                    
									<?php  }  ?>
                                </tbody>
                            </table>
							

			</div>		
	
<script>		
$(".uniform_on").change(function(){
    var max= 3;
    if( $(".uniform_on:checked").length == max ){
	
        $(".uniform_on").attr('disabled', 'disabled');
		         alert('3 Books are allowed per borrow');
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