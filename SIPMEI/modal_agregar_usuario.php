	<div id="add_user" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Agregar usuario</strong></div>
	<form class="form-horizontal" method="post">
			<div class="control-group">
				<label class="control-label" for="inputEmail">Nueva clave de acceso</label>
				<div class="controls">
				<input type="text" minlength="4" maxlength="10" pattern="[0-9]+" id="inputEmail" name="username" placeholder="Mínimo 4 dígitos" autocomplete="off" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Contraseña</label>
				<div class="controls">
				<input type="password" name="password" id="inputPassword" placeholder="Contraseña" required>
				</div>
			</div>
				<div class="control-group">
				<label class="control-label" for="inputEmail">Nombre</label>
				<div class="controls">
				<input type="text" id="inputEmail" name="nombre" placeholder="Ingresa tu nombre" autocomplete="off" required>
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
	
	$id=$_POST['username'];
	$name=$_POST['nombre'];
	$address="No disponible";
	$gender="No disponible";
	$password=$_POST['password'];
	$hash_password = password_hash($password, PASSWORD_DEFAULT);
	$token = uniqid(rand(), TRUE);

	
	$query = "SELECT id FROM affiliate WHERE id='$id'";
	$result = mysql_query($query)or die(mysql_error());
	$num_row = mysql_num_rows($result);
	$row=mysql_fetch_array($result);
	if( $num_row > 0 ) {
	echo "<script>alert('No puedes usar ésta clave de acceso.');</script>";
    }
else{
	mysql_query("insert into affiliate (id, hash_password, name, address, gender, token) values('$id','$hash_password','$name','$address','$gender','$token')")or die(mysql_error());
	}
}
	?>