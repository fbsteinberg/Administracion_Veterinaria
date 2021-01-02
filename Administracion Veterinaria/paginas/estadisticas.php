<?php 
    require_once "funciones.php";
    session_start();
    if (isset($_SESSION['usuario']))
    {
    ?>
        <div class="row">
        	<div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                            	<div class="huge">
                                	<?php 
                                	$cantidadusuarios = cantidadusuarios();
                                	echo $cantidadusuarios;
                                	?>
                            	</div>
                                <div>Usuarios registrados</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <?php 
                                    $cantidadmascotas = cantidadmascotas();
                                    echo $cantidadmascotas;
                                    ?>
                                </div>
                                <div>Mascotas registradas</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <?php 
                                    $cantidaddueños = cantidadduenios();
                                    echo $cantidaddueños;
                                    ?>
                                </div>
                                <div>Dueños registrados</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <?php 
                                    $cantidadvacunas = cantidadvacunas();
                                    echo $cantidadvacunas;
                                    ?>
                                </div>
                                <div>Vacunas registradas</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php
    }
    else
    {
        echo "Debe loguearse para poder acceder a esta caracteristica";
    }
?>
