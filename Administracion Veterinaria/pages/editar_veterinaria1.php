<?php 
    require_once "funciones.php";
    if ($_POST['id'] == '')
    {
    	echo "Debe completar todos los campos";
    	?><a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a><?php
    }
    else
    {
    $veterinaria = array();
    $veterinaria = obtenerveterinaria($_POST['id']);
    $id = $_POST['id'];
?>
<div class="row">
	<div class="col-lg-12">
		<h1>Editar Veterinaria</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">
			</div>
			<div class="panel-body">
				<div class="form-group">
                    <form method = "post" action = "editar_veterinaria2.php">
                    <input type="hidden" name="id" value="<?php echo $id; ?>"/>
					<label>Ingresar nombre</label>
					<input type="text" class="form-control" name="Nombre" value="<?php echo $veterinaria['Nombre'];?>"/>
					</br>
					<label>Ingresar direccion</label>
					<input type="text" class="form-control" name="Direccion" value="<?php echo $veterinaria['Direccion'];?>">
					</br>
					<label>Ingresar telefono</label>
					<input type="text" class="form-control" name="Telefono" value="<?php echo $veterinaria['Telefono'];?>">
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