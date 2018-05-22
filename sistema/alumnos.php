<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
			   <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Control de alumnos</strong>
                                </div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                             
								<p><a href="nuevo_alumno.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Nuevo alumno</a></p>
							
                                <thead>
                                    <tr>
                                        <th>Nombre</th>                                 
                                        <th>Género</th>
										<th>Num. Ctrl.</th>
										<th>Carrera</th>
										<th>Celular</th>
										<th>Semestre</th>
										<th>Estatus</th>
										<th>Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysql_query("select * from alumnos")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_alumno'];  ?>
									<tr class="del<?php echo $id ?>">
									
									                              
                                    <td><?php echo $row['nombre']." ".$row['apellido']; ?></td>
                                    <td><?php echo $row['genero']; ?> </td> 
                                    <td><?php echo $row['num_control']; ?> </td>
                                    <td><?php echo $row['carrera']; ?></td>
									<td><?php echo $row['celular']; ?></td> 
									<td><?php echo $row['semestre']; ?></td> 
									<td><?php echo $row['estatus']; ?></td> 
									<?php include('barra_editar_borrar.php'); ?>
                                    <td width="100">
                                        <a rel="tooltip"  title="Eliminar" id="<?php echo $id; ?>" href="#borrar_alumno<?php echo $id; ?>" data-toggle="modal"    class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                                        <?php include('modal_borrar_alumno.php'); ?>
                                        
										<a  rel="tooltip"  title="Editar" id="e<?php echo $id; ?>" href="editar_alumno.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
										
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