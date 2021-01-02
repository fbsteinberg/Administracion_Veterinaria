<?php 
    require_once "funciones.php";
    session_start();
    if (isset($_SESSION['usuario']))
    {
    ?>
<html>
<body>
<div class="row">
  <div class ="col-lg-12">
     <h1> Tabla Usuarios</h1>
     </div>
    <div class ="col-lg-14">
    <div class ="panel panel-default">
        <div class ="panel-heading">Usuarios</div>
        <div class ="panel-body">
                                <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <center>
                                <a href="#" onclick="nuevo_usuario();" class="glyphicon glyphicon-floppy-disk">Insertar nuevo usuario</a>
                                </br>
                                </br>
                                <a href="#" onclick="editar_usuario();" class="glyphicon glyphicon-floppy-save">Editar usuario por ID</a>
                                </br>
                                </br>
                                <a href="#" onclick="eliminar_usuario();" class="glyphicon glyphicon-floppy-remove">Eliminar usuario por ID</a>
                                </br>
                                </br>
                                </center>
                                    <thead>
                                        <tr>
                                                <th>ID</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Mail</th>
                                                <th>Telefono</th>
                                                <th>Especialidad</th>
                                                <th>Usuario</th>
                                                <th>Password</th>
                                                <th>Tipo de Usuario</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    $conexion = conectarbd();
                                    $registros=mysqli_query($conexion,"select * from usuarios") or die("Problemas en el select:".mysqli_error($conexion));
                                    while ($row = mysqli_fetch_array($registros))
                                    {
                                    ?>
                                            <td><?php echo $row['idmatricula'];?></td>
                                            <td><?php echo $row['Nombre'];?></td>
                                            <td><?php echo $row['Apellido'];?></td>
                                            <td><?php echo $row['Mail'];?></td>
                                            <td><?php echo $row['Telefono'];?></td>
                                            <td><?php 
                                            if($row['Especialidad'] == 1)
                                            {
                                            echo "Veterinario";
                                            } 
                                            if($row['Especialidad'] == 2)
                                            {
                                            echo "Cirugia";
                                            }
                                            if($row['Especialidad'] == 3)
                                            {
                                            echo "Cardiologia";
                                            }        
                                            ?></td>
                                            <td><?php echo $row['Usuario'];?></td>
                                            <td><?php 
                                            if (isset($_SESSION['usuario']))
                                            {
                                                if ($_SESSION['usuario']['TipoUsuario'] > 2)
                                                {
                                                    echo $row['Password'];
                                                }
                                            }
                                            ?></td>
                                            <td><?php 
                                            if($row['TipoUsuario'] == 1)
                                            {
                                            echo "Veterinario";
                                            } 
                                            if($row['TipoUsuario'] == 2)
                                            {
                                            echo "Recepcionista";
                                            }
                                            if($row['TipoUsuario'] == 3)
                                            {
                                            echo "Administrador";
                                            }        
                                            ?></td>
                                        </tr>
                                    <?php 
                                    }
                                    mysqli_close($conexion); 
                                    ?>
                                    </tbody>
                                </table>
                            </div>
        </div>
        </div>
    </div>
</div>
</body>
</html>
<?php
}
else
{
    echo "Debe loguearse para poder acceder a esta caracteristica";
}
?>