	<div id="edit<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Editar usuario</strong></div>
	<form class="form-horizontal" method="post">
			
        <div class="control-group">
				<label class="control-label" for="inputEmail">Nombre</label>
				<div class="controls">	
				<input type="text" id="inputEmail" name="nombre" value="<?php echo $row['nombre']; ?>" autocomplete="off" required>
				</div>
			</div>
        
			<div class="control-group">
				<label class="control-label" for="inputEmail">Apellido</label>
				<div class="controls"> 
				<input type="text" id="inputEmail" name="apellido" value="<?php echo $row['apellido']; ?>" autocomplete="off" required>
				</div>
			</div>	
        
        <div class="control-group">
				<label class="control-label" for="inputEmail">Username</label>
				<div class="controls">
				<input type="hidden" id="inputEmail" name="id" value="<?php echo $row['user_id']; ?>" required>
				<input type="text" id="inputEmail" name="username" value="<?php echo $row['username']; ?>" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				<input type="text" name="password" id="inputPassword" value="<?php echo $row['password']; ?>" required>
				</div>
			</div>
			
			<div class="control-group">
				<div class="controls">
				<button name="edit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Actualizar</button>
				</div>
			</div>
    </form>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Cancelar</button>
		</div>
    </div>
	
	<?php
	if (isset($_POST['edit'])){
	
	$user_id=$_POST['id'];
	$username=$_POST['username'];
	$password=$_POST['password'];
	$nombre=$_POST['nombre'];
	$apellido=$_POST['apellido'];
	
	mysql_query("update usuarios set username='$username', password='$password', nombre='$nombre',apellido='$apellido' where user_id='$user_id'")or die(mysql_error()); ?>
	<script>
	window.location="usuarios.php";
	</script>
	<?php
	}
	?>