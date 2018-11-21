<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Borrar categoría</div>
			<p><a href="mantenimiento.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a></p>
	<div class="addstudent">
	<div class="details">Selecciona la categoría a eliminar...</div>		
	<form class="form-horizontal" method="POST" action="borrar_categoria_bd.php" enctype="multipart/form-data">
			
        
		      
        
        <div class="control-group">
			<label class="control-label" for="inputPassword">Categorias existentes: </label>
			<div class="controls">
			<select name="id_categoria">		
			<?php
			$cat_query = mysql_query("select * from categorias");
			while($cat_row = mysql_fetch_array($cat_query)){
			?>
			<option value="<?php echo $cat_row['id_categoria']; ?>"><?php echo $cat_row['nombre_categoria']; ?></option>
			<?php  } ?>
			</select>
		</div>
		</div>
		
        
        <div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-danger"><i class="icon-trash icon-large"></i>&nbsp;Eliminar</button>
			</div>
		</div>
       
    </form>					
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>