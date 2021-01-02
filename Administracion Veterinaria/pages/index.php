<?php
    require_once "funciones.php";
    session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administración veterinaria</title>


    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="../dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <!--<img style="margin-left:860px;" src="imagenes/Logo completo.png" alt="Smiley face" height:"250px;" width="250px;">-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="imagenes/Logo.png" alt="Logo" height="45" width="45"><a class="navbar-brand">Bienvenido <?php if(isset($_SESSION['usuario'])){echo $_SESSION['usuario']['Nombre'];echo ' '; echo $_SESSION['usuario']['Apellido'];}else{echo "Invitado";}?></a>
            </div> 
            <!-- /.navbar-header -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#" onClick="login();"><i class="glyphicon glyphicon-user"></i><?php if(isset($_SESSION['usuario'])){echo $_SESSION['usuario']['Nombre'];}else{echo "Login Usuario";}?></a>
                        </li>
                        <li>
                            <a href="#" onClick="estadisticas();"><i class="glyphicon glyphicon-tasks"></i>Estadisticas</a>
                        </li>
                        <li>
                            <a href="#" onClick="lista_enfermedades();"><i class="glyphicon glyphicon-list-alt"></i>Enfermedades</a>
                        </li>
                        <li>
                            <a href="#" onClick="lista_usuarios();"><i class="glyphicon glyphicon-list-alt"></i>Usuarios</a>                           
                        </li>
                        <li>
                            <a href="#" onClick="lista_veterinarias();"><i class="glyphicon glyphicon-list-alt"></i>Veterinarias</a>                           
                        </li>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
                            <?php 
                            require_once "funciones.php";
                            if (isset($_SESSION['usuario']))
                            {       
                            ?>  
                            <center>
                            <img src="imagenes/Bienvenido.gif" alt="Logo" height="250" width="400">
                            <h2>Bienvenido <?php echo $_SESSION['usuario']['Nombre'];echo ' '; echo $_SESSION['usuario']['Apellido']; ?></h2>
                            <a href="logout.php">Desloguearse</a>
                            </center>
                            <?php
                            }
                            else
                            {
                            ?>
                            <div class="row">
                            <div class="col-lg-12">
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                        <h2>Login Usuario</h2>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <center>
                                                <form role="form" action="login2.php" method="post">
                                                <input type="text" class="form-control" name="usuario" placeholder="Ingrese Usuario o DNI" />
                                                <input type="password" class="form-control" name="password" placeholder="Ingrese su Contraseña" />
                                                <input type="submit" name="btn_submit" class="btn btn-info" value="Loguearme" />
                                                </center>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php
                            }
                            ?>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../bower_components/raphael/raphael-min.js"></script>
    <script src="../bower_components/morrisjs/morris.min.js"></script>
    <script src="../js/morris-data.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    <script src="../dist/js/js.js"></script>
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>



</body>

</html>
