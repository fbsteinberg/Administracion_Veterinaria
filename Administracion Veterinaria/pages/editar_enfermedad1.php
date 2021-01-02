<?php 
    require_once "funciones.php";
    if ($_POST['id'] == '')
    {
    	echo "Debe completar todos los campos";
    	?><a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a><?php
    }
    else
    {
    $enfermedad = array();
    $enfermedad = obtenerenfermedad($_POST['id']);
    $id = $_POST['id'];
?>
<div class="row">
	<div class="col-lg-12">
		<h1>Editar Enfermedad</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">
			</div>
			<div class="panel-body">
				<div class="form-group">
                    <form method = "post" action = "editar_enfermedad2.php">
                    <input type="hidden" name="id" value="<?php echo $id; ?>"/>
					<label>Nombre de la enfermedad</label>
					<input type="text" class="form-control" name="Nombre" value="<?php echo $enfermedad['Nombre']; ?>"  />
					</br>
					<label>Animal al que pertenece</label>
					<select name="Especie" class="combobox">
						<option value="<?php $enfermedad['Especie'] ?>"><?php
						if ($enfermedad['Especie'] == 1)
                        {
                            echo "CANINO (Actual)";
                        }
                        if ($enfermedad['Especie'] == 2)
                        {
                            echo "FELINO (Actual)";
                        }
                        if ($enfermedad['Especie'] == 3)
                        {
                        	echo "AMBOS (Actual)";
                        }
						?></option>
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

					<input type = "submit"	value = "Actualizar" />
					</form>
				</div>
		</div>
	</div>

</div>
<?php 
}
?>