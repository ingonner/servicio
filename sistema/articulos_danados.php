<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
			   <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Tabla de Articulos</strong>
                                </div>
						<!--  -->
								    <ul class="nav nav-pills">
										<li><a href="articulos.php">Todos</a></li>
                    <!--				<li><a href="articulos_nuevos.php">Articulos nuevos</a></li>
				       	                <li><a href="articulos_antiguos.php">Articulos antiguos</a></li>  -->	
										<li><a href="articulos_perdidos.php">Articulos perdidos</a></li>
										<li  class="active"><a href="articulos_danados.php">Articulos dañados</a></li>
										
									</ul>
						<!--  -->
		<center class="title">
						<h1>Articulos dañados</h1>
						</center>
            
                  <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Imprimir reporte</a>
								</div>
         <p><a href="nuevo_articulo.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Agregar articulo</a></p>
                                <thead>
                                    <tr>
                                 <!--       <th>ID de articulo</th>     -->                            
                                        <th>Nombre del art.</th>                                 
                                        <th>Marca</th>                                 
                                        <th>Fecha de devolucion</th>                                 
                                        <th>Alumno</th>  
                                        <th>Carrera</th> 
                                        <th>Detalles</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                <?php $user_query=mysql_query("SELECT articulos.id_articulo, articulos.nombre_articulo, articulos.marca, fecha_devolucion, alumnos.nombre, alumnos.apellido, alumnos.carrera, alumnos.num_control, articulos_danados.detalle FROM `articulos_danados` INNER JOIN articulos ON articulos_danados.id_articulo = articulos.id_articulo INNER JOIN alumnos on alumnos.id_alumno = articulos_danados.id_alumno")or die(mysql_error());
									
                                    
            while($row=mysql_fetch_array($user_query)){									
                            //      $id_articulo=$row['id_articulo'];  
									$nombre_articulo=$row['nombre_articulo'];
                                    $marca=$row['marca']; 
                                    $fecha_devolucion=$row['fecha_devolucion'];
                                    $nombre_alumno=$row['nombre'];
                                    $apellido_alumno=$row['apellido']; 
                                    $num_control=$row['num_control']; 
                                    $carrera=$row['carrera'];
                                    $detalle=$row['detalle'];
                                    
								
									?>
                                    
									<tr class="del<?php echo $id ?>">
                                        
                                        
                            <!--    <td><?php echo $row['id_articulo']; ?></td>    -->
                                    <td><?php echo $row['nombre_articulo']; ?></td>
									<td><?php echo $row ['marca']; ?> </td>
                                    <td><?php echo $row['fecha_devolucion']; ?> </td> 
                                    <td><?php echo $row['nombre']." ".$row['apellido']." -- ".$row['num_control']; ?></td>   
                                    <td><?php echo $row['carrera']; ?> </td> 
                                    <td><?php echo $row['detalle']; ?> </td>    
                                     
        
                                     </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>