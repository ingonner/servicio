<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dashboard.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
			   <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;QR de los artículos</strong>
                                </div>

						<center class="title">
						<h1>Lista de articulos</h1>
						</center>
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" >
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Imprimir</a>
								</div>
								<p> 
                                    <a class="btn btn-info" href="articulos.php"><i class="icon-arrow-left icon-large"></i>&nbsp;Regresar</a>
                                    <a href="nuevo_articulo.php" class="btn btn-success"><i class="icon-plus"></i>&nbsp;Agregar articulo</a>
                                    
                                </p>
							
                                <thead>
                                    <tr>
                                        <th>ID Articulo</th>  
									    <th>Texto QR</th>                                 
                                        <th>Imágen QR</th>		
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php 

								  $user_query=mysql_query("select * from vista_articulos")or die(mysql_error());
									while($row=mysql_fetch_array($user_query)){
									$id=$row['id_articulo'];  
									$nombre_articulo=$row['nombre_articulo'];
                                    
                                  ?>
                                    
									<tr class="del<?php echo $id ?>">
                                    <td><?php echo $row['id_articulo']; ?></td>
                                    <td>ID:<?php echo $row['id_articulo']; ?> <?php echo $row['nombre_articulo']; ?></td>
                                    <td><img src="qrgenerator.php?t=ID:<?php echo $id;?> <?php echo $row['nombre_articulo']; ?>"/></td>
										
						
									
                                    </tr>
									<?php  }  ?>
                           
                                </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>