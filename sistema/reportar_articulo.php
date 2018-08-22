
<?php 


$id=$_GET['id'];
$id_articulo = $_GET['id_articulo'];

?>

<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Reporte de daños/extravío de materiales</div>
                <p><a href="pendientes.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a></p>
	<div class="addstudent">
	<div class="details">Ingresa los datos del incidente</div>		
	<form class="form-horizontal" method="POST" action="guardar_reporte.php<?php echo '?id='.$id; ?>&<?php echo 'id_articulo='.$id_articulo; ?>" enctype="multipart/form-data">
			
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Estado del material/herramienta:</label>
			<div class="controls">
			<select name="problema" required>
				<option value="1">Dañado</option>                
				<option value="2">Perdido</option>
                <option value="3">No lo devolvió</option>
			</select>
			</div>
		</div>
        
        <div class="control-group">
			<label class="control-label" for="text">Detalle del daño:</label>
			<div class="controls">
			<textarea name="detalle" rows="3" cols="40" placeholder="Escribe aquí tus comentarios si deseas agregar..."></textarea>

			</div>
		</div>
	
        
        <div class="control-group">
			<label class="control-label" for="inputPassword">¿Desea desactivar al alumno?</label>
			<div class="controls">
			<select name="accion_alumno">
				<option>Si</option>
				<option>No</option>
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
