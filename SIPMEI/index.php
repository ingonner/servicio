<?php include('header.php'); ?>
<?php include('navbar.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">
					<div class="sti">
						<img src="../LMS/headeritspa.PNG" class="img-rounded">
					</div>
				<div class="login">
				<div class="log_txt">
				<p><strong>Por favor, ingresa tus datos</strong></p>
				</div>
						<form class="form-horizontal" method="POST">
								<div class="control-group">
									<label class="control-label" for="inputEmail">Usuario</label>
									<div class="controls">
									<input type="text" minlength="4" maxlength="10" name="username" id="username" placeholder="Ingresa tu nombre de usuario" required>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="inputPassword">Contraseña</label>
									<div class="controls">
									<input type="password" name="password" id="password" placeholder="ingresa tu contraseña" required>
								</div>
								</div>
								<div class="control-group">
									<div class="controls">
									<button id="login" name="submit" type="submit" class="btn"><i class="icon-signin icon-large"></i>&nbsp;Ingresar al sistema</button>
								</div>
								</div>
								
								<?php
								if (isset($_POST['submit'])){
								session_start();

								$username = $_POST['username'];
								$password = $_POST['password'];
		
		$query = "SELECT id,hash_password FROM affiliate WHERE id='$username'";
								$result = mysql_query($query)or die(mysql_error());
								$num_row = mysql_num_rows($result);
								$row=mysql_fetch_array($result);

								if( $num_row > 0 ) {
								if (password_verify($password, $row['hash_password'])) {
                   				header('location:dashboard.php');
								$_SESSION['id']=$row['id'];
                				} else {
                    			echo "<div class='alert alert-danger'>Datos incorrectos</div>";
                				}

										
								
									}
									else{ ?>
	<div class="alert alert-danger">Datos incorrectos</div>		
								<?php
								}}
								?>
						</form>
				
				</div>
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>