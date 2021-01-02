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
				<h1>Insertar Enfermedades</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
					</div>
					<div class="panel-body">
						<div class="form-group">
		                    <form method = "post" action = "nueva_enfermedad2.php">
							<label>Ingresar nombre de la Enfermedad</label>
							<input type="text" class="form-control" name="Nombre">
							</br>
							<label>Elegir animal al que pertenece</label>
							<select name="Especie" class="combobox">
							<?php
								$conexion = conectarbd();
								$sql = "SELECT idespecie,Nombre FROM especies";
								$result = $conexion->query($sql); //usamos la conexion para dar un resultado a la variable
								if ($result->num_rows > 0) //si la variable tiene al menos 1 fila entonces seguimos con el codigo
								{
								    $combobit="";
								    while ($row = $result->fetch_array(MYSQLI_ASSOC)) 
								    {
								        $combobit .=" <option value='".$row['idespecie']."'>".$row['Nombre']."</option>"; //concatenamos el los options para luego ser insertado en el HTML
								    }
								}
								mysqli_close($conexion);
							?>
							<?php echo $combobit; ?>	
							</select>
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
