<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span2">			     
										<ul class="nav nav-tabs nav-stacked">
											<li>
											<a href="#add_user" data-toggle="modal" ><i class="icon-plus icon-large"></i>&nbsp;<strong>Agregar usuario</strong></a>
											</li>
										</ul>
										
										 
     <!-- Modal add user -->
	<?php include('modal_agregar_usuario.php'); ?>
										
			</div>
			<div class="span10">
			
			
					
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
                                <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Tabla de usuarios</strong>
                                </div>
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>ID de usuario</th>
                                        <th>Password</th>                                  
                                        <th>Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php $user_query=mysql_query("select id, name, hash_password, token from affiliate")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id']; ?>
									 <tr class="del<?php echo $id ?>">
                                    <td><?php echo $row['name']; ?></td>
                                    <td><?php echo $row['id']; ?></td> 
                                    <td>**************</td> 
                                    <td width="100">
                                        <a rel="tooltip"  title="Borrar" id="<?php echo $id; ?>"  href="#borrar_usuario<?php echo $id; ?>" data-toggle="modal"  class="btn btn-danger"><i class="icon-trash icon-large"></i></a>
                                        <?php include('modal_borrar_usuario.php'); ?>
										<a rel="tooltip"  title="Editar" id="e<?php echo $id; ?>" href="#edit<?php echo $id; ?>" data-toggle="modal" class="btn btn-success"><i class="icon-pencil icon-large"></i></a>
                                    	<?php include('modal_editar_usuario.php'); ?>
									</td>
									<?php include('barra_editar_borrar.php'); ?>
									     <!-- Modal edit user -->
								
                                    </tr>
									<?php } ?>
                           
                                </tbody>
                            </table>
							

			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>