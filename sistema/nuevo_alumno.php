<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
             <div class="alert alert-info">Agregar alumno</div>
			<p><a href="alumnos.php" class="btn btn-info"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a></p>
	<div class="addstudent">
	<div class="details">Ingresa los datos del estudiante</div>		
	<form class="form-horizontal" method="POST" action="guardar_alumno.php" enctype="multipart/form-data">
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Nombre:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="nombre"  placeholder="Oscar" autocomplete="off" required>

			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Apellido:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="apellido"  placeholder="Maldonado" autocomplete="off" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Genero:</label>
			<div class="controls">
			<select name="genero" required>
				<option>Hombre</option>
				<option>Mujer</option>
			</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Numero de control:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="num_control"  placeholder="XXXXXXXX" autocomplete="off"  maxlength="8"  required>
			</div>
		</div>
        
        	<div class="control-group">
			<label class="control-label" for="inputPassword">Carrera:</label>
			<div class="controls">
			<select name="carrera">
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
			<input type='tel' pattern="[0-9]{10,10}" class="search" name="celular"  placeholder="10 digitos"  autocomplete="off"  maxlength="10" >
			</div>
		</div>
        
        <div class="control-group">
			<label class="control-label" for="inputPassword">Semestre:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="semestre"  placeholder="1,2,3,4..." autocomplete="off" maxlength="2" required>
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