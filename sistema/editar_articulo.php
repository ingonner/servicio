<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		<?php 
		$query=mysql_query("select * from articulos LEFT JOIN categorias on categorias.id_categoria  = articulos.id_categoria where id_articulo='$get_id'")or die(mysql_error());
		$row=mysql_fetch_array($query);
		$id_categoria = $row['id_categoria'];
		?>
             <div class="alert alert-info"><i class="icon-pencil"></i>&nbsp;Editar articulo</div>
			<p><a class="btn btn-info" href="articulos.php"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a></p>
	<div class="addstudent">
	<div class="details">Por favor ingresa la información</div>	
        
        
	<form class="form-horizontal" method="POST" action="actualizar_articulo.php" enctype="multipart/form-data">
		<div class="control-group">
			<label class="control-label" for="inputEmail">Nombre del articulo:</label>
			<div class="controls">
			<input type="text" class="span4" id="inputEmail" name="nombre_articulo" value="<?php echo $row['nombre_articulo']; ?>" placeholder="Nombre del articulo" required>
			<input type="hidden" id="inputEmail" name="id" value="<?php echo $get_id;  ?>" placeholder="nombre_articulo" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Categoria:</label>
			<div class="controls">
			<select name="id_categoria">
				<option value="<?php echo $id_categoria; ?>"><?php echo $row['nombre_categoria']; ?></option>
				<?php $query1 = mysql_query("select * from categorias where id_categoria != '$id_categoria'")or die(mysql_error());
				while($row1 = mysql_fetch_array($query1)){
				?>
				<option value="<?php echo $row1['id_categoria']; ?>"><?php echo $row1['nombre_categoria']; ?></option>
				<?php } ?>
			</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Marca:</label>
			<div class="controls">
			<input type="text" class="span4" id="inputPassword" name="marca" value="<?php echo $row['marca']; ?>" placeholder="Marca del articulo" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Cantidad:</label>
			<div class="controls">
			<input class="span1" type="text" id="inputPassword" name="ejemplares" value="<?php echo $row['ejemplares']; ?>" placeholder="Cantidad" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Descripcion:</label>
			<div class="controls">
			<input type="text" class="span4"  id="inputPassword" name="detalle" value="<?php echo $row['detalle']; ?>" placeholder="Detalles del articulo" required>
			</div>
		</div>	
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Estatus:</label>
			<div class="controls">
			<select name="estatus">
				<option><?php echo $row['estatus']; ?></option>
				<option>Nuevo</option>
				<option>Viejo</option>
				<option>Perdido</option>
				<option>Dañado</option>
				<option>Requiere reemplazo</option>
			</select>
			</div>
		</div>
		
		
		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Actualizar</button>
			</div>
		</div>
    </form>				
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>