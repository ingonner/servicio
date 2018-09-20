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

 <form method="post" action="guardar_prestamo_carro.php">  


    <?php  
$action = isset($_GET['action']) ? $_GET['action'] : "";
$product_id = isset($_GET['product_id']) ? $_GET['product_id'] : "1";
$name = isset($_GET['name']) ? $_GET['name'] : "";
$quantity = isset($_GET['quantity']) ? $_GET['quantity'] : "1";

if($action=='removed'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> fue eliminado de la lista!";
    echo "</div>";
}
            
if($action=='added'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> ¡agregado!";
    echo "</div>";
}
 
else if($action=='failed'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> No se pudo agregar!";
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
				
				</form>






<?php include('carro.php'); ?>
</div>
		







        	<div class="span8">
						<div class="alert alert-success"><strong>Selecciona el (los) materiales a prestar...</strong></div>
                   <div class="control-group">
				<label class="control-label" for="inputEmail">Buscar:</label>
				<div class="controls">
				
                    
               <select style="width:600px" name="id_articulo" id="product-id" class="chzn-select"required/>
				<option></option>
				
                    <?php $result =  mysql_query("select id_articulo, nombre_articulo, marca from articulos ORDER BY nombre_articulo DESC")or die(mysql_error()); 
				while ($row=mysql_fetch_array($result)){ ?>
					<option value="<?php echo $row['id_articulo']; ?>"><?php echo $row['nombre_articulo'];?> (<?php echo $row['marca'];?>)
                    </option>
				<?php } ?>
                    
				</select>
                        <select style="width:50px"  id='cantidad'>
                                            <option selected value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                       
                       <button class='btn btn-primary add-to-cart'>
                     <span class='glyphicon glyphicon-shopping-cart'></span> Añadir
                       </button>
				</div>

			</div>
			</div>
			</div>		

             

<script>
$(document).ready(function(){
    $('.add-to-cart').click(function(){
   
        
        var id = document.getElementById("product-id").value;
      
        /* Para obtener el texto */
        var combo = document.getElementById("product-id");
        var name = combo.options[combo.selectedIndex].text
        var quantity = document.getElementById('cantidad').value;
      
        //alert(id+","+name+","+quantity);
        
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