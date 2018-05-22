	<div id="borrar_articulo<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-danger">¿Realmente deseas eliminar el articulo?</div>

		</div>
		<div class="modal-footer">
			<a class="btn btn-danger" href="borrar_articulo.php<?php echo '?id='.$id; ?>">Si</a>
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Cancelar</button>
		</div>
    </div>
	
