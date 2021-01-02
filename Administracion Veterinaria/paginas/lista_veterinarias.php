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
             <h1> Tabla Veterinarias</h1>
             </div>
            <div class ="col-lg-14">
            <div class ="panel panel-default">
                <div class ="panel-heading">Veterinarias</div>
                <div class ="panel-body">
                                        <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <center>
                                        <a href="#" onclick="nueva_veterinaria();" class="glyphicon glyphicon-floppy-disk">Insertar nueva veterinaria</a>
                                        </br>
                                        </br>
                                        <a href="#" onclick="editar_veterinaria();" class="glyphicon glyphicon-floppy-save">Editar veterinaria por ID</a>
                                        </br>
                                        </br>
                                        <a href="#" onclick="eliminar_veterinaria();" class="glyphicon glyphicon-floppy-remove">Eliminar veterinaria por ID</a>
                                        </br>
                                        </br>
                                        </center>
                                            <thead>
                                                <tr>
                                                        <th>ID</th>
                                                        <th>Nombre</th>
                                                        <th>Direccion</th>
                                                        <th>Telefono</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php
                                            $conexion = conectarbd();
                                            $registros=mysqli_query($conexion,"select idveterinaria, Nombre, Direccion, Telefono from veterinarias") or die("Problemas en el select:".mysqli_error($conexion));
                                            while ($row = mysqli_fetch_array($registros))
                                            {
                                            ?>
                                                    <td><?php echo $row['idveterinaria'];?></td>
                                                    <td><?php echo $row['Nombre'];?></td>
                                                    <td><?php echo $row['Direccion'] ?></td>
                                                    <td><?php echo $row['Telefono'] ?></td>
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
