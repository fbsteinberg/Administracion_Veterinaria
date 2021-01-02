	<?php
	function conectarbd()
	{
    $conexion = mysqli_connect("localhost","root","","veterinaria") or die("Problemas con la conexión");
    return $conexion;
	}
	function insertarveterinaria($nombre, $direccion, $telefono)
	{
		$conexion = conectarbd();
		mysqli_query($conexion,"insert into veterinarias(Nombre,Direccion,Telefono) values('$nombre','$direccion',$telefono)")	or die("Problemas en el select".mysqli_error($conexion));
  		mysqli_close($conexion);
	}
	function obtenerveterinaria($id)
	{
	$array = array();
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"select Nombre, Direccion, Telefono from veterinarias where idveterinaria ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	while ($row = mysqli_fetch_array($registros))
    {
    	$array['Nombre'] = $row['Nombre'];
    	$array['Direccion'] = $row['Direccion'];
    	$array['Telefono'] = $row['Telefono'];
    }
	mysqli_close($conexion);
	return $array;
	}
	function actualizarveterinaria($id, $Nombre, $Direccion, $Telefono)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"update veterinarias SET Nombre='$Nombre', Direccion='$Direccion', Telefono=$Telefono where idveterinaria='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}	
	function eliminarveterinaria($id)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"delete from veterinarias where idveterinaria ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}
	function buscarusuario($usuario,$password)
	{
	$array = array();
	$mysqli = conectarbd();
	$query = "SELECT * FROM usuarios WHERE Usuario = ? AND Password = ? LIMIT 1";
	if ($stmt = $mysqli->prepare($query))
	{
		$stmt->bind_param('ss', $usuario, $password);
		$stmt->execute();
		$stmt->bind_result($idmatricula,$Nombre,$Apellido,$Mail,$Telefono,$Especialidad,$Usuario,$Password,$TipoUsuario);
		while($stmt->fetch())
		{
			$array = array(
			'idmatricula' => $idmatricula,
			'Nombre' => $Nombre,
			'Apellido' => $Apellido,
			'Mail' => $Mail,
			'Telefono' => $Telefono,
			'Especialidad' => $Especialidad,
			'Usuario' => $Usuario,
			'Password' => $Password,
			'TipoUsuario' => $TipoUsuario
			);
		}
		$stmt->close();
	}
	$mysqli->close();
	return $array;
	}
	function cantidadvacunas()
	{
		$conexion = conectarbd();
		$query = "SELECT count(*) FROM vacunas";
		if ($stmt = $conexion->prepare($query))
		{
			$stmt->execute();
			$stmt->bind_result($count);
			$stmt->fetch();
			$stmt->close();
		}
		mysqli_close($conexion);
		return $count;
	}
	function cantidadduenios()
	{
		$conexion = conectarbd();
		$query = "SELECT count(*) FROM duenios";
		if ($stmt = $conexion->prepare($query))
		{
			$stmt->execute();
			$stmt->bind_result($count);
			$stmt->fetch();
			$stmt->close();
		}
		mysqli_close($conexion);
		return $count;
	}
	function cantidadmascotas()
	{
		$conexion = conectarbd();
		$query = "SELECT count(*) FROM mascotas";
		if ($stmt = $conexion->prepare($query))
		{
			$stmt->execute();
			$stmt->bind_result($count);
			$stmt->fetch();
			$stmt->close();
		}
		mysqli_close($conexion);
		return $count;
	}
	function cantidadusuarios()
	{
		$conexion = conectarbd();
		$query = "SELECT count(*) FROM usuarios";
		if ($stmt = $conexion->prepare($query))
		{
			$stmt->execute();
			$stmt->bind_result($count);
			$stmt->fetch();
			$stmt->close();
		}
		mysqli_close($conexion);
		return $count;
	}
	function eliminarusuario($id)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"delete from usuarios where idmatricula ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}
	function obtenerusuario($id)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"select idmatricula,Nombre,Apellido,Mail,Telefono,Especialidad,Usuario,Password,TipoUsuario from usuarios where idmatricula ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	while ($row = mysqli_fetch_array($registros))
    {
    	$usuario = array('idmatricula' => $row['idmatricula'],'Nombre' => $row['Nombre'],'Apellido' => $row['Apellido'],'Mail' => $row['Mail'],'Telefono' => $row['Telefono'],'Especialidad' => $row['Especialidad'], 'Usuario' => $row['Usuario'], 'Password' => $row['Password'], 'TipoUsuario' => $row['TipoUsuario']);
    }
	mysqli_close($conexion);
	return $usuario;
	}
	function actualizarusuario($idmatricula,$nombre,$apellido,$mail,$telefono,$especialidad,$usuario,$password,$tipousuario)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"update usuarios SET Nombre='$nombre',Apellido='$apellido',Mail='$mail',Telefono='$telefono',Especialidad='$especialidad',Usuario='$usuario',Password='$password',TipoUsuario='$tipousuario' where idmatricula='$idmatricula'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}	
	function insertarusuario($idmatricula,$nombre,$apellido,$mail,$telefono,$especialidad,$usuario,$password,$tipousuario)
	{
		$conexion = conectarbd();
		mysqli_query($conexion,"insert into usuarios(idmatricula,Nombre,Apellido,Mail,Telefono,Especialidad,Usuario,Password,TipoUsuario) values($idmatricula,'$nombre','$apellido','$mail',$telefono,$especialidad,$usuario,'$password',$tipousuario)") or die("Problemas en el select".mysqli_error($conexion));
  		mysqli_close($conexion);
	}
	function insertarenfermedad($nombre, $especie)
	{
		$conexion = conectarbd();
		mysqli_query($conexion,"insert into enfermedades(Nombre,Especie) values('$nombre','$especie')")	or die("Problemas en el select".mysqli_error($conexion));
  		mysqli_close($conexion);
	}	
	function eliminarenfermedad($id)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"delete from enfermedades where idenfermedades ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}
	function obtenerenfermedad($id)
	{
	$array = array();
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"select Nombre, Especie from enfermedades where idenfermedades ='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	while ($row = mysqli_fetch_array($registros))
    {
    	$array['Nombre'] = $row['Nombre'];
    	$array['Especie'] = $row['Especie'];
    }
	mysqli_close($conexion);
	return $array;
	}
	function actualizarenfermedad($id, $Nombre, $Especie)
	{
	$conexion = conectarbd();
	$registros=mysqli_query($conexion,"update enfermedades SET Nombre='$Nombre', Especie='$Especie' where idenfermedades='$id'") or die("Problemas en el select:".mysqli_error($conexion));
	mysqli_close($conexion);
	}	
	function validaciones()
	{
			if (trim($_POST["fnombre"]) == "")
			{
				$Errores[] = "Nombre vacío";
			}
			if (trim($_POST["fapellido"]) == "")
			{
				$Errores[] = "Apellido vacío";
			}
			if (trim($_POST["fnick"]) == "")
			{
				$Errores[] = "Username vacío";
			}
			if (trim($_POST["femail"]) =="")
			{
				$Errores[] = "Email vacío";
			}
			else
			{
				$posat = strpos($_POST["femail"], "@");
				if ($posat === false)
				{
					$Errores[] = "Email invalido";
				}
				elseif ($posat === 0)
				{
					$Errores[] = "Email invalido";
				}
				elseif (strpos($_POST["femail"], ".", $posat) == 0)
				{
					$Errores[] = "Email invalido";
				}
			}
			if (trim($_POST["fcemail"]) == "")
			{	
				$Errores[] = "Confirmación de Email vacía";
			}
			elseif (trim($_POST["femail"]) != trim($_POST["fcemail"]))
			{
				$Errores[] = "Confirmación de email invalida";
			}
			if (trim($_POST["fcontrasena"]) == "")
			{
				$Errores[] = "Contraseña vacía";	
			}
			else if(strlen(trim($_POST["fcontrasena"])) < 6)
			{
				$Errores[] = "Debe ingresar una contraseña con al menos 6 caracteres";
			}
			if (trim($_POST["fcontrasena2"]) == "")
			{	
				$Errores[] = "Confirmación de Contraseña vacía";
			}
			elseif (trim($_POST["fcontrasena"]) != trim($_POST["fcontrasena2"]))
			{
				$Errores[] = "Confirmación de Contraseña invalida";
			}
			if (!isset($_POST["sexo"]))
			{
				$Errores[] = "Debe seleccionar un sexo";
			}		
			if (checkdate($_POST["mes"],$_POST["dia"],$_POST["ano"]) == false)
			{
				$Errores[] = "La fecha seleccionada es invalida";
			}
			
			if (trim($_POST["descripcion"]) == "")
			{
				$Errores[] = "Ingrese una Descripcion";
			}
			elseif (strlen($_POST["descripcion"]) < 20 || strlen($_POST["descripcion"]) > 140)
			{
				$Errores[] = "La descripción no debe tener menos de 20 caracteres y no puede tener más de 140";
			}		
			if (!isset ($_POST["array"]))
			{
				$Errores[] = "Debe seleccionar por lo menos 2 secciones";
			}
			else
			{			
				if(count($_POST["array"]) <2)
				{
					$Errores[] = "Debe seleccionar por lo menos 2 secciones";
				}
			}		
			if(!isset($_POST["ATYC"]))
			{
				$Errores[] = "Debe aceptar los terminos y condiciones si desea registrarse";
			}
			return $Errores;
	}