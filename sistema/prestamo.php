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

<!--    <form method="post" action="guardar_prestamo.php">   -->




    <?php  
$action = isset($_GET['action']) ? $_GET['action'] : "";
$product_id = isset($_GET['product_id']) ? $_GET['product_id'] : "1";
$name = isset($_GET['name']) ? $_GET['name'] : "";
$quantity = isset($_GET['quantity']) ? $_GET['quantity'] : "1";
            
if($action=='added'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> ¡agregado a tu carrito!";
    echo "</div>";
}
 
else if($action=='failed'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> No se pudo agregar a su carrito!";
    echo "</div>";
}
?>
            
<div class="span3">
<div class="control-group">
				<label class="control-label" for="inputEmail">Nombre del alumno</label>
				<div class="controls">
				<select name="id_alumno" class="chzn-select"required/>
				<option></option>
				
                    <?php $result =  mysql_query("select * from alumnos where estatus ='Activo'")or die(mysql_error()); 
				while ($row=mysql_fetch_array($result)){ ?>
					<option value="<?php echo $row['id_alumno']; ?>"><?php echo $row['nombre']." ".$row['apellido']; ?>
                    </option>
				<?php } ?>
                    
				</select>
				</div>
			</div>
            
            <p>Si el alumno no aparece, probablemente esté bloqueado!!!</p>
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
            
            <?php include('carro.php'); ?>
            
            
				</div>
				<div class="span8">
						<div class="alert alert-success"><strong>Selecciona el (los) materiales a prestar...</strong></div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">

                                <thead>
                                    <tr>
                                        <th>Nombre</th>                                 
                                        <th>Categoría</th>
										<th>Marca</th>
									<!--	<th>Detalles</th> -->
										<th>Cantidad</th>
										<th>Agregar</th>										
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysql_query("select * from articulos where estatus != 'Archivado' AND ejemplares > 0 ")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_articulo'];  
									$cat_id=$row['id_categoria'];

											$cat_query = mysql_query("select * from categorias where id_categoria = '$cat_id'")or die(mysql_error());
											$cat_row = mysql_fetch_array($cat_query);
									?>
									<tr class="del<?php echo $id ?>">
									
									                              
                                    <td>
                                     <div class='product-id' style='display:none;'><?php echo $row['id_articulo']; ?></div>
                                     <div class='product-name'><?php echo $row['nombre_articulo']; ?></div>   
                                    </td>
                                    
									<td><?php echo $cat_row ['nombre_categoria']; ?> </td> 
                                    <td><?php echo $row['marca']; ?> </td> 
							<!--	    <td><?php echo $row['detalle']; ?></td> -->
                                    <td>
                                        <select style="width:50px" name='quantity' class='form-control' value="<?php echo $cantidad?>">
                                            <option selected>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                        </select>
                                    </td>
                                        
                                   
									<td>
                                        <button class='btn btn-primary add-to-cart'>
                                            <span class='glyphicon glyphicon-shopping-cart'></span> Añadir
                                        </button>
                                        </td>
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							
			  
			</div>		
			</div>		

            

<script>
$(document).ready(function(){
    $('.add-to-cart').click(function(){
        var id = $(this).closest('tr').find('.product-id').text();
        var name = $(this).closest('tr').find('.product-name').text();
        var quantity = $(this).closest('tr').find('select').val();
        window.location.href = "agregar_carro.php?id=" + id + "&name=" + name + "&quantity=" + quantity;
    });
     
    $('.update-quantity').click(function(){
        var id = $(this).closest('tr').find('.product-id').text();
        var name = $(this).closest('tr').find('.product-name').text();
        var quantity = $(this).closest('tr').find('input').val();
        window.location.href = "actualizar.php?id=" + id + "&name=" + name + "&quantity=" + quantity;
    });
});
</script>            
            
			</div>
		</div>
    </div>
<?php include('footer.php') ?>