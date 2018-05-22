	<div id="add_user" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Agregar usuario</strong></div>
	<form class="form-horizontal" method="post">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Nombre de usuario</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="username" placeholder="Username" autocomplete="off" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Contraseña</label>
				<div class="controls">
				<input type="password" name="password" id="inputPassword" placeholder="Password" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Nombre</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="nombre" placeholder="Username" autocomplete="off" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Apellido</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="apellido" placeholder="Username" autocomplete="off" required>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
				<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Guardar</button>
				</div>
			</div>
    </form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Cancelar</button>
		</div>
    </div>
	
	<?php
	if (isset($_POST['submit'])){
	$username=$_POST['username'];
	$password=$_POST['password'];
	$nombre=$_POST['nombre'];
	$apellido=$_POST['apellido'];
	
	mysql_query("insert into usuarios (username,password,nombre,apellido) values('$username','$password','$nombre','$apellido')")or die(mysql_error());
	}
	?>