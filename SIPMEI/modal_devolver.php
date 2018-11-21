	<div id="devolucion<?php echo $id_detalle_prestamos ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-success">¿Confirmas la devolución del articulo?</div>

		</div>
		<div class="modal-footer">
			<a class="btn btn-success" href="guardar_devolucion.php<?php echo '?id='.$id; ?>&<?php echo 'id_articulo='.$id_articulo; ?>">Si</a>
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Cancelar</button>
		</div>
    </div>
	
