<?php
require_once "funciones.php";
$conexion = conectarbd();
if(isset($_POST["enviar"]))
{
	if ($_POST['idmatricula'] == '' || $_POST['Nombre'] == '' || $_POST['Apellido'] == '' || $_POST['Mail'] == '' || $_POST['Telefono'] == '' || $_POST['Especialidad'] == '' || $_POST['Usuario'] == '' || $_POST['Password'] == '' || $_POST['TipoUsuario'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		insertarusuario($_POST['idmatricula'],$_POST['Nombre'],$_POST['Apellido'],$_POST['Mail'],$_POST['Telefono'],$_POST['Especialidad'],$_POST['Usuario'],$_POST['Password'],$_POST['TipoUsuario']);
		echo "El usuario ha sido insertado exitosamente";
	}
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>