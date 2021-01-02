<?php 
    require_once "funciones.php";
    session_start();
    if (isset($_SESSION['usuario']))
    {
    	if ($_SESSION['usuario']['TipoUsuario'] > 1)
    	{
    	?>
		    	<div class="row">
			<div class="col-lg-12">
				<h1>Editar Enfermedades</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
					</div>
					<div class="panel-body">
						<div class="form-group">
		                    <form method = "post" action = "editar_enfermedad1.php">
							<label>Ingresar el ID de la Enfermedad</label>
							<input type="text" class="form-control" name="id">
							</br>
							<input type = "submit"	value = "Editar" />
							</form>
						</div>
				</div>
			</div>
		</div>
    	<?php
    	}
    	else
    	{
    		echo "Usted no posee permiso para realizar esta accion";
        }
    }
	else
	{
		echo "Por favor logueese para poder acceder a esta caracteristica si posee permiso";
	}
?>
