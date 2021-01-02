<?php
require_once "funciones.php";
$conexion = conectarbd();
if ($_POST['id'] == '')
{
	echo "Debe completar todos los campos";
}
else
{
	eliminarusuario($_POST['id']);
	echo "El usuario fue eliminado exitosamente";
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>