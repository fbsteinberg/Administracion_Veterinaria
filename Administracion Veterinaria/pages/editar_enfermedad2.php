<?php
require_once "funciones.php";
if ($_POST['Nombre'] == '' || $_POST['Especie'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		actualizarenfermedad($_POST['id'], $_POST['Nombre'], $_POST['Especie']);
		echo "La enfermedad ha sido actualizada exitosamente";
	}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>