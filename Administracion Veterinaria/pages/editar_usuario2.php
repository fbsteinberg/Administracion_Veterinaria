<?php
require_once "funciones.php";
var_dump($_POST);
if ($_POST['idmatricula'] == '' || $_POST['Nombre'] == '' || $_POST['Apellido'] == '' || $_POST['Mail'] == '' || $_POST['Telefono'] == '' || $_POST['Especialidad'] == '' || $_POST['Usuario'] == '' || $_POST['Password'] == '' || $_POST['TipoUsuario'] == '')
{
	echo "Debe completar todos los campos";
}
else
{
	actualizarusuario($_POST['idmatricula'], $_POST['Nombre'], $_POST['Apellido'], $_POST['Mail'], $_POST['Telefono'], $_POST['Especialidad'], $_POST['Usuario'], $_POST['Password'], $_POST['TipoUsuario']);
	echo "El usuario ha sido actualizado exitosamente. Si el usuario modificado fue el que esta logueado actualmente, usted debe desloguearse y loguearse devuelta para aplicar los cambios";
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>