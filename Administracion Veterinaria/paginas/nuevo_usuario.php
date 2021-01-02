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
			<h1>Insertar Usuario</h1>
		</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
					</div>
					<div class="panel-body">
						<div class="form-group">
		                    <form method = "post" action = "nuevo_usuario2.php">
							<label>ID Matricula</label>
							<input type="text" class="form-control" name="idmatricula">
							</br>
							<label>Nombre</label>
							<input type="text" class="form-control" name="Nombre">
							</br>
							<label>Apellido</label>
							<input type="text" class="form-control" name="Apellido">
							</br>
							<label>Mail</label>
							<input type="text" class="form-control" name="Mail">
							</br>
							<label>Telefono</label>
							<input type="text" class="form-control" name="Telefono">
							</br>
							<label>Especialidad</label>
							<select name="Especialidad" class="combobox">
								<?php
								$conexion = conectarbd();
								$sql = "SELECT idespecialidad,Nombre FROM especialidad";
								$result = $conexion->query($sql); //usamos la conexion para dar un resultado a la variable
								if ($result->num_rows > 0) //si la variable tiene al menos 1 fila entonces seguimos con el codigo
								{
								    $combobit="";
								    while ($row = $result->fetch_array(MYSQLI_ASSOC)) 
								    {
								        $combobit .=" <option value='".$row['idespecialidad']."'>".$row['Nombre']."</option>"; //concatenamos el los options para luego ser insertado en el HTML
								    }
								}
								mysqli_close($conexion);
							?>
							<?php echo $combobit; ?>
							</select>
							</br>
							<label>DNI (Usuario)</label>
							<input type="text" class="form-control" name="Usuario">
							</br>
							<label>Password</label>
							<input type="text" class="form-control" name="Password">
							</br>
							<label>Tipo de Usuario</label>
							<select name="TipoUsuario" class="combobox">
							<?php
								$conexion = conectarbd();
								$sql = "SELECT idTipoUsuario,TipoUsuario FROM tipousuario";
								$result = $conexion->query($sql); //usamos la conexion para dar un resultado a la variable
								if ($result->num_rows > 0) //si la variable tiene al menos 1 fila entonces seguimos con el codigo
								{
								    $combobit="";
								    while ($row = $result->fetch_array(MYSQLI_ASSOC)) 
								    {
								        $combobit .=" <option value='".$row['idTipoUsuario']."'>".$row['TipoUsuario']."</option>"; //concatenamos el los options para luego ser insertado en el HTML
								    }
								}
								mysqli_close($conexion);
							?>
							<?php echo $combobit; ?>
							</select>
							</br>
							<input type = "submit"	name="enviar" value = "Registrar" />
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
