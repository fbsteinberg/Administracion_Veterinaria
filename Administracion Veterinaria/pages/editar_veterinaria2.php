<?php
require_once "funciones.php";
if ($_POST['Nombre'] == '' || $_POST['Direccion'] == '' || $_POST['Telefono'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		actualizarveterinaria($_POST['id'], $_POST['Nombre'], $_POST['Direccion'], $_POST['Telefono']);
		echo "La veterinaria ha sido actualizada exitosamente";
	}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>