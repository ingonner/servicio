<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
								<div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Nuevo prestamo</strong>
                                </div>

		<div class="span12">		

		<form method="post" action="guardar_prestamo.php">
<div class="span3">
<div class="control-group">
				<label class="control-label" for="inputEmail">Nombre del alumno</label>
				<div class="controls">
				<select name="id_alumno" class="chzn-select"required/>
				<option></option>
				
                    <?php $result =  mysql_query("select * from alumnos")or die(mysql_error()); 
				while ($row=mysql_fetch_array($result)){ ?>
					<option value="<?php echo $row['id_alumno']; ?>"><?php echo $row['nombre']." ".$row['apellido']; ?>
                    </option>
				<?php } ?>
                    
				</select>
				</div>
			</div>
				<div class="control-group"> 
					<label class="control-label" for="inputEmail">Fecha a devolver</label>
					<div class="controls">
					<input type="text"  class="w8em format-d-m-y highlight-days-67 range-low-today" name="fecha_devolucion" id="sd" maxlength="10" style="border: 3px double #CCCCCC;" autocomplete="off" required/>
					</div>
				</div>
				<div class="control-group"> 
					<div class="controls">

								<button name="delete_student" class="btn btn-success"><i class="icon-plus-sign icon-large"></i> Realizar prestamo</button>
					</div>
				</div>
				</div>
				<div class="span8">
						<div class="alert alert-success"><strong>Selecciona el (los) materiales a prestar...</strong></div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">

                                <thead>
                                    <tr>
                       
                                        <th>ID</th>                                 
                                        <th>Nombre</th>                                 
                                        <th>Categoría</th>
										<th>Marca</th>
										<th>Detalles</th>
										<th>Estatus</th>
										<th>Agregar</th>										
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysql_query("select * from articulos where estatus != 'Archivado' ")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_articulo'];  
									$cat_id=$row['id_categoria'];

											$cat_query = mysql_query("select * from categorias where id_categoria = '$cat_id'")or die(mysql_error());
											$cat_row = mysql_fetch_array($cat_query);
									?>
									<tr class="del<?php echo $id ?>">
									
									                              
                                    <td><?php echo $row['id_articulo']; ?></td>
                                    <td><?php echo $row['nombre_articulo']; ?></td>
									<td><?php echo $cat_row ['nombre_categoria']; ?> </td> 
                                    <td><?php echo $row['marca']; ?> </td> 
									 <td><?php echo $row['detalle']; ?></td>
									  <td width=""><?php echo $row['estatus']; ?></td> 
									<?php include('barra_editar_borrar.php'); ?>
                                    <td width="20">
												<input id="" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>" >
												
                                    </td>
									
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							
			    </form>
			</div>		
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