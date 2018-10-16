<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
 

<script>
 alert(<?php echo $xxx;?>);
 </script>


    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
						<!--  -->
								  	   <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                </div>
						<!--  -->
						<center class="title">
						<h1>Articulos archivados (eliminados)</h1>
						</center>
                
                
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered">
							
                                							
                                <thead>
                                    <tr>
									    <th>Administración de Semestres.</th>                                 
                                        <th>Administración de Alumnos.</th>                                 
                                        <th>Administración de Categorías</th>
										<th>Administración de Articulos</th>
                                        <th>Administración de Usuarios</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                                 
                                    
                                    <tr>
                                        
                                    <td>  <a rel="tooltip"  title="Baja un semestre a TODOS los alumnos" href="#bajar_semestre" data-toggle="modal" class="btn btn-warning"><i class="icon-step-backward"></i> Bajar un semestre</a>
                                     <?php include('modal_bajar_semestre.php'); ?></td>
                                        
                                    <td>  <a href="archivo_alumnos.php" class="btn btn-success"  class="btn btn-success"><i class="icon-plus"></i>Mostrar eliminados</a> </td>
                                    
                                    
                                        
                                        
									<td>  <a href="nueva_categoria.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp; Agregar una categoría</a>
                                    </td>


                                        
                                    <td>  <a href="articulos.php" class="btn btn-success"><i class="icon-book"></i>&nbsp; Ver articulos</a>
                                    </td>


                                        
                                    <td>  <a href="usuarios.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp; Nuevo usuario</a>
                                    </td>    
					
                                    </tr>
                                    
                                    
                                   
                                    
                                    
									<tr>
                                        
                                     <td>  <a rel="tooltip"  title="Sube un semestre a TODOS los alumnos" href="#subir_semestre" data-toggle="modal" class="btn btn-warning"><i class="icon-step-forward"></i> Subir un semestre</a>
                                     <?php include('modal_subir_semestre.php'); ?></td>
                                    
                                     <td> <a href="#archivar_alumnos" title="Eliminar TODOS los alumnos" class="btn btn-danger"  data-toggle="modal" ><i class="icon-trash"></i> Eliminar Alumnos</a>
                                     <?php include('modal_archivar_alumnos.php'); ?></td>
                                                                           
                                        
									 <td>  <a href="borrar_categoria.php" class="btn btn-danger"><i class="icon-trash"></i>&nbsp; Eliminar una categoría</a>
                                    </td>
                                        
                                    <td> <a href="#archivar_articulos" title="Eliminar TODOS los artículos" class="btn btn-danger"  data-toggle="modal" ><i class="icon-trash"></i> Eliminar articulos</a>
                                     <?php include('modal_archivar_articulos.php'); ?></td> 



                                    <td> </td> 
					
                                    </tr>
                                    
                                    
                                    
									
                           
                                </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>