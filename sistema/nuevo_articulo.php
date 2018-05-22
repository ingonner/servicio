<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Agregar artículo</div>
			<p><a href="articulos.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Atrás</a></p>
	<div class="addstudent">
	<div class="details">Ingresa los datos del articulo</div>		
	<form class="form-horizontal" method="POST" action="guardar_articulo.php" enctype="multipart/form-data">
			
	
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Nombre del articulo:</label>
			<div class="controls">
			<input type="text" class="span4" id="inputEmail" name="nombre_articulo"  placeholder="Nombre del articulo" required>
			</div>
		</div>
		
		
			<div class="control-group">
			<label class="control-label" for="inputPassword">Categoría</label>
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
			<label class="control-label" for="inputEmail">Marca:</label>
			<div class="controls">
	<input type="text"  class="span4" id="inputPassword" name="marca"  placeholder="Marca" required>
			</div>
		</div>
		

		
		

		<div class="control-group">
			<label class="control-label" for="iionputPassword">Ejemplares:</label>
			<div class="controls">
			<input type="text" class="span1" id="inputPassword" name="ejemplares"  placeholder="3" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Detalle:</label>
			<div class="controls">
			<input type="text"  class="span4" id="inputPassword" name="detalle"  placeholder="Descripcion del articulo" required>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Estatus:</label>
			<div class="controls">
			<select name="estatus" required>
			
				<option>Nuevo</option>
				<option>Antiguo</option>
				<option>Perdido</option>
				<option>Dañado</option>
			</select>
			</div>
		</div>
		
		
		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Guardar</button>
			</div>
		</div>
    </form>					
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>