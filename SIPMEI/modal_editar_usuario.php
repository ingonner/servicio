	<div id="edit<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-info"><strong>Editar usuario</strong></div>
	<form class="form-horizontal" method="post">
			
        <div class="control-group">
				<label class="control-label" for="inputEmail">Nombre</label>
				<div class="controls">	
				<input type="text" id="inputEmail" name="nombre" value="<?php echo $row['name']; ?>" autocomplete="off" required>
				</div>
			</div>
        
        
        <div class="control-group">
				<label class="control-label" for="inputEmail">Clave de acceso</label>
				<div class="controls">
				<input type="hidden" id="inputEmail" name="id" value="<?php echo $row['id']; ?>" required>
				<input type="text" minlength="4" maxlength="10" pattern="[0-9]+" id="inputEmail" name="username" value="<?php echo $row['id']; ?>" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
			<input type="text" name="password" id="inputPassword" value="<?php echo $row['hash_password'];?>" disabled>
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
	
	$id=$_POST['username'];
	$name=$_POST['nombre'];
	$hash_password=$_POST['hash_password'];
	$token = $_POST['token'];
	
	mysql_query("update affiliate set id='$id', name='$name' where token='$token'")or die(mysql_error()); ?>
	<script>
	window.location="usuarios.php";
	</script>
	<?php
	}
	?>