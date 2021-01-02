<?php
require_once "funciones.php";
$conexion = conectarbd();
if ($_POST['id'] == '')
{
	echo "Debe completar todos los campos";
}
else
{
	eliminarenfermedad($_POST['id']);
	echo "La enfermedad fue eliminada exitosamente";
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>