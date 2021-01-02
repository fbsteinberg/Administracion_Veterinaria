<?php 
    require_once "funciones.php";
    session_start();
    if (isset($_SESSION['usuario']))
	{		
	?>	
	<center>
	<img src="imagenes/Bienvenido.gif" alt="Logo" height="250" width="400">
	<h2>Bienvenido <?php echo $_SESSION['usuario']['Nombre'];echo ' '; echo $_SESSION['usuario']['Apellido']; ?></h2>
	<a href="logout.php">Desloguearse</a>
	</center>
	<?php
	}
	else
	{
	?>
	<div class="row">
	<div class="col-lg-12">
	</div>
	</div>
	<div class="row">
		<div class="col-lg-8">
			<div class="panel panel-default">
				<div class="panel-heading">
				<h2>Login Usuario</h2>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<center>
						<form role="form" action="login2.php" method="post">
						<input type="text" class="form-control" name="usuario" placeholder="Ingrese Usuario o DNI" />
						<input type="password" class="form-control" name="password" placeholder="Ingrese su Contraseña" />
						<input type="submit" name="btn_submit" class="btn btn-info" value="Loguearme" />
						</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php
	}
?>