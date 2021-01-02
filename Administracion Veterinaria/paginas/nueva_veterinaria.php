<?php 
    require_once "funciones.php";
    session_start();
    if (isset($_SESSION['usuario']))
    {
    	if ($_SESSION['usuario']['TipoUsuario'] > 2)
    	{
    	?>
		    <div class="row">
			<div class="col-lg-12">
				<h1>Insertar Veterinaria</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
					</div>
					<div class="panel-body">
						<div class="form-group">
		                    <form method = "post" action = "nueva_veterinaria2.php">
							<label>Ingresar nombre</label>
							<input type="text" class="form-control" name="Nombre">
							</br>
							<label>Ingresar direccion</label>
							<input type="text" class="form-control" name="Direccion">
							</br>
							<label>Ingresar telefono</label>
							<input type="text" class="form-control" name="Telefono">
							</br>
							<input type = "submit" name="enviar" value = "Registrar" />
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
