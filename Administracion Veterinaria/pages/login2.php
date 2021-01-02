<?php
require_once "funciones.php";
$conexion = conectarbd();
if(isset($_POST))
{
	if ($_POST['usuario'] == '' || $_POST['password'] == '')
	{
		echo "Debe completar todos los campos";
	}
	else
	{
		$usuario = array();
		$usuario = buscarusuario($_POST['usuario'],$_POST['password']);
		if (isset($usuario['idmatricula']))
		{
			echo "El usuario ha sido logeado existosamente";
			session_start();
			$_SESSION['usuario'] = $usuario;
		}
		else
		{
			echo "El usuario o contraseña son incorrectos";
		}
	}
}
?>
</br>
<a href="http://localhost/Administracion%20Veterinaria/pages/index.php">Volver</a>