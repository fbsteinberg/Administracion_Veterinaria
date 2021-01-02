<?php
require_once "funciones.php";
$conexion = conectarbd();
if (isset($_POST["enviar"]))
{ 
	if ($_POST['Nombre'] == '' || $_POST['Direccion'] == '' || $_POST['Telefono'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		insertarveterinaria($_POST['Nombre'],$_POST['Direccion'],$_POST['Telefono']);
		echo "La veterinaria ha sido insertada exitosamente";
	}
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>