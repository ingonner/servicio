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
										<li class="active"><a href="articulos_nuevos.php">Articulos nuevos</a></li>
					<!--				<li><a href="articulos_antiguos.php">Articulos antiguos</a></li>  -->	
										<li><a href="articulos_perdidos.php">Articulos perdidos</a></li>
										<li><a href="articulos_danados.php">Articulos dañados</a></li>

									</ul>
						<!--  -->
						<center class="title">
						<h1>Articulos nuevos</h1>
						</center>
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Imprimir</a>
								</div>
								<p><a href="nuevo_articulo.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Agregar articulo</a></p>
							
                                <thead>
                                    <tr>
									    <th>ID Artic.</th>                                 
                                        <th>Nombre artic.</th>                                 
                                        <th>Categoría</th>
										<th>Marca</th>
										<th class="action">Cantidad</th>
										<th>Descripc.</th>
										<th>Añadido desde</th>
										<th>Estatus</th>
										<th class="action">Acción</th>		
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php 

							
							
									

								  $user_query=mysql_query("select * from articulos where estatus = 'Nuevo'")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_articulo'];  
									$id_categoria=$row['id_categoria'];
									$ejemplares = $row['ejemplares'];
									
									$detalle_prestamos = mysql_query("select * from detalle_prestamos where id_articulo = '$id' and estatus_prestamo = 'pendiente'");
									$row11 = mysql_fetch_array($detalle_prestamos);
									$count = mysql_num_rows($detalle_prestamos);
									
									$total =  $ejemplares  -  $count; 
									
                                        $cat_query = mysql_query("select * from categorias where id_categoria = '$id_categoria'")or die(mysql_error());
											$cat_row = mysql_fetch_array($cat_query);
									?>
                                    
									<tr class="del<?php echo $id ?>">
                                    <td><?php echo $row['id_articulo']; ?></td>
                                    <td><?php echo $row['nombre_articulo']; ?></td>
									<td><?php echo $cat_row ['nombre_categoria']; ?> </td>
                                    <td><?php echo $row['marca']; ?> </td> 
                                    <td class="action"><?php echo   $total;   ?> </td>
                                     <td><?php echo $row['detalle']; ?></td>	
									 <td><?php echo $row['fecha_agregado']; ?></td>
									 <td><?php echo $row['estatus']; ?></td>
									<?php include('barra_editar_borrar.php'); ?>
                                    
                                        <td class="action">
                                       
										<a  rel="tooltip"  title="Editar" id="e<?php echo $id; ?>" href="editar_articulo.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
                                            
                                         <a rel="tooltip"  title="Eliminar" id="<?php echo $id; ?>" href="#borrar_articulo<?php echo $id; ?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                                        <?php include('modal_borrar_articulo.php'); ?>    
										
                                    </td>
									
                                    </tr>
									<?php  }  ?>
                           
                                </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>