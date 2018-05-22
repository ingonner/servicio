<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		<?php 
		$query=mysql_query("select * from alumnos where id_alumno='$get_id'")or die(mysql_error());
		$row=mysql_fetch_array($query);
		
		?>
             <div class="alert alert-info"><i class="icon-pencil"></i>&nbsp;Editar alumno</div>
			<p><a class="btn btn-info" href="alumnos.php"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a></p>
	<div class="addstudent">
	<div class="details">Ingresa los datos</div>	
	<form class="form-horizontal" method="POST" action="actualizar_alumno.php" enctype="multipart/form-data">
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Nombre:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="nombre" value="<?php echo $row['nombre']; ?>" placeholder="Oscar"   autocomplete="off" required>
			<input type="hidden" id="inputEmail" name="id" value="<?php echo $get_id;  ?>" placeholder="Firstname" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Apellido:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="apellido" value="<?php echo $row['apellido']; ?>" placeholder="Maldonado" autocomplete="off" required>
			</div>
		</div>
		
  
        <div class="control-group">
			<label class="control-label" for="inputPassword">Genero:</label>
			<div class="controls">
			<select name="genero">
				<option><?php echo $row['genero']; ?></option>
				<option>Hombre</option>
				<option>Mujer</option>
			</select>
			</div>
		</div>
		
        
		<div class="control-group">
			<label class="control-label" for="inputPassword">Numero de control:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="num_control" value="<?php echo $row['num_control']; ?>" placeholder="XXXXXXXX" autocomplete="off" maxlength="8" required>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Carrera:</label>
			<div class="controls">
			<select name="carrera">
				<option><?php echo $row['carrera']; ?></option>
				<option>IBIO</option>
				<option>ITICs</option>
                <option>IAD</option>
				<option>IDC</option>
                <option>IGE</option>
				<option>IAM</option>
			</select>
			</div>
		</div>
        
       	<div class="control-group">
			<label class="control-label" for="inputPassword">Celular:</label>
			<div class="controls">
			<input type='tel' pattern="[0-9]{10,10}" class="search" name="celular" value="<?php echo $row['celular']; ?>" placeholder="10 digitos"  autocomplete="off"  maxlength="10" >
			</div>
		</div>
        
        
 	<div class="control-group">
			<label class="control-label" for="inputPassword">Semestre:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="semestre" value="<?php echo $row['semestre']; ?>" placeholder="XXXXXXXX"   autocomplete="off" required>
			</div>
		</div>
		
				<div class="control-group">
			<label class="control-label" for="inputPassword">Estatus:</label>
			<div class="controls">
				<select name="estatus" required>
									<option><?php  echo $row['estatus']; ?></option>
									<option>Activo</option>
									<option>Baneado</option>
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