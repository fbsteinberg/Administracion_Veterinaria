<?php 
    require_once "funciones.php";  
?>
<div class="row">
  <div class ="col-lg-12">
     <h1> Tabla Dueños</h1>
     </div>

    <div class ="col-lg-14">
    <div class ="panel panel-default">
        <div class ="panel-heading">Dueños</div>
        <div class ="panel-body">
                                <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                                <th>DNI</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Direccion</th>
                                                <th>CP</th>
                                                <th>Departamento</th>
                                                <th>Piso</th>
                                                <th>Codigo de Area</th>
                                                <th>Telefono</th>
                                                <th>Mail</th>
                                                <th>Fecha Nacimiento</th>
                                                <th>Sexo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    $conexion = conectarbd();
                                    $registros=mysqli_query($conexion,"CALL Listar_Duenios") or die("Problemas en el select:".mysqli_error($conexion));
                                    while ($row = mysqli_fetch_array($registros))
                                    {
                                    ?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $row["DNI"];?></td>
                                            <td><?php echo $row["Nombre"];?></td>
                                            <td><?php echo $row["Apellido"];?></td>
                                            <td><?php echo $row["Direccion"];?></td>
                                            <td><?php echo $row["CP"];?></td>
                                            <td><?php echo $row["Departamento"];?></td>
                                            <td><?php echo $row["Piso"];?></td>
                                            <td><?php echo $row["CodArea"];?></td>
                                            <td><?php echo $row["Telefono"];?></td>
                                            <td><?php echo $row["Mail"];?></td>
                                            <td><?php echo $row["FechaNacimiento"];?></td>
                                            <td><?php if ($row['Sexo'] == 0)
                                            {
                                                echo "Hombre";
                                            }
                                            if ($row['Sexo'] == 1)
                                            {
                                                echo "Mujer";
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

