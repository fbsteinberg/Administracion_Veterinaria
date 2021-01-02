<?php 
    require_once "funciones.php";
    if ($_POST['id'] == '')
    {
    	echo "Debe completar todos los campos";
    	?><a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a><?php
    }
    else
    {
    $usuario = array();
    $usuario = obtenerusuario($_POST['id']);
?>
<div class="row">
	<div class="col-lg-12">
		<h1>Editar Usuario</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">
			</div>
			<div class="panel-body">
				<div class="form-group">
                    <form method = "post" action = "editar_usuario2.php">
                    <input type="hidden" name="idmatricula" value="<?php echo $usuario['idmatricula'] ?>"/>
                    <label>Nombre</label>
					<input type="text" class="form-control" name="Nombre" value="<?php echo $usuario['Nombre'] ?>">
					</br>
					<label>Apellido</label>
					<input type="text" class="form-control" name="Apellido" value="<?php echo $usuario['Apellido'] ?>">
					</br>
					<label>Mail</label>
					<input type="text" class="form-control" name="Mail" value="<?php echo $usuario['Mail'] ?>">
					</br>
					<label>Telefono</label>
					<input type="text" class="form-control" name="Telefono" value="<?php echo $usuario['Telefono'] ?>">
					</br>
					<label>Especialidad</label>
					<select name="Especialidad" class="combobox">
						<option value="<?php $usuario['Especialidad'] ?>"><?php
						if ($usuario['Especialidad'] == 1)
                        {
                            echo "Veterinario (Actual)";
                        }
                        if ($usuario['Especialidad'] == 2)
                        {
                            echo "Cirugia (Actual)";
                        }
                        if ($usuario['Especialidad'] == 3)
                        {
                        	echo "Cardiologia (Actual)";
                        }
						?></option>
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
					<label>Usuario</label>
					<input type="text" class="form-control" name="Usuario" value="<?php echo $usuario['Usuario'] ?>">
					</br>
					<label>Password</label>
					<input type="text" class="form-control" name="Password" value="<?php echo $usuario['Password'] ?>">
					</br>
					<label>Tipo de Usuario</label>
					<select name="TipoUsuario" class="combobox">
						<option value="<?php $usuario['TipoUsuario'] ?>"><?php
						if ($usuario['TipoUsuario'] == 1)
                        {
                            echo "Veterinario (Actual)";
                        }
                        if ($usuario['TipoUsuario'] == 2)
                        {
                            echo "Recepcionista (Actual)";
                        }
                        if ($usuario['TipoUsuario'] == 3)
                        {
                        	echo "Administrador (Actual)";
                        }
						?></option>
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
					<input type = "submit"	value = "Actualizar" />
					</form>
				</div>
		</div>
	</div>

</div>
<?php 
}
?>