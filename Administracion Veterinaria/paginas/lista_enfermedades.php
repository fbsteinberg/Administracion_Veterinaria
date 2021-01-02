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
             <h1> Tabla Enfermedades</h1>
             </div>
            <div class ="col-lg-14">
            <div class ="panel panel-default">
                <div class ="panel-heading">Enfermedades</div>
                <div class ="panel-body">
                                        <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <center>
                                        <a href="#" onclick="nueva_enfermedad();" class="glyphicon glyphicon-floppy-disk">Insertar nueva Enfermedad</a>
                                        </br>
                                        </br>
                                        <a href="#" onclick="editar_enfermedad();" class="glyphicon glyphicon-floppy-save">Editar enfermedad por ID</a>
                                        </br>
                                        </br>
                                        <a href="#" onclick="eliminar_enfermedad();" class="glyphicon glyphicon-floppy-remove">Eliminar enfermedad por ID</a>
                                        </br>
                                        </br>
                                        </center>
                                            <thead>
                                                <tr>
                                                        <th>ID</th>
                                                        <th>Nombre</th>
                                                        <th>Especie</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php
                                            $conexion = conectarbd();
                                            $registros=mysqli_query($conexion,"select idenfermedades, Nombre, Especie from enfermedades") or die("Problemas en el select:".mysqli_error($conexion));
                                            while ($row = mysqli_fetch_array($registros))
                                            {
                                            ?>
                                                    <td><?php echo $row['idenfermedades'];?></td>
                                                    <td><?php echo $row['Nombre'];?></td>
                                                    <td><?php
                                                    if ($row['Especie'] == 1)
                                                    {
                                                        echo "Canino";
                                                    }
                                                    if ($row['Especie'] == 2)
                                                    {
                                                        echo "Felino";
                                                    }
                                                    if ($row['Especie'] == 3)
                                                    {
                                                        echo "Ambos";
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
