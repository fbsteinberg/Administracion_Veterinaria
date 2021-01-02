<?php
require_once "funciones.php";
$conexion = conectarbd();
if (isset($_POST["enviar"]))
{ 
	if ($_POST['Nombre'] == '' || $_POST['Especie'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		insertarenfermedad($_POST['Nombre'],$_POST['Especie']);
		echo "La enfermedad ha sido insertada exitosamente";
	}
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>