<?php include 'config/funciones.php'?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <title></title>
    </head>
    <body>
        <div class="container">
            <!-- contenido -->
            <div class="row col-md-12">
                <div class="col-md-6">
                    <br><br><br><br><br><br>
                    <div>
                        <video width="110%" height="110%" controls>
                            <source src="video/mov_bbb.mp4" type="video/mp4">
                            <source src="video/mov_bbb.ogg" type="video/ogg">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>
                <div class="col-md-6">
                    <br><br><br>
                    <div class="col-md-10 col-md-offset-1"><h3><img src="img/logo.jpg" title="7 art community" width="50%"/>7 Art Community</h3></div>
                    <div class="col-md-8 col-md-offset-2 panel-gris">
                        <div class="col-md-8 col-md-offset-2 ">
                            <br>
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Usuario" required autofocus>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Password" required>
                                </div>
                                <div class=" col-md-offset-2">
                                    <button class="btn  btn-primary " type="submit">Iniciar Sesi&oacute;n</button>
                                </div>
                            </form>
                            <br>
                            <div class=" col-md-offset-3 registrarse">
                                <p><a href="#" data-toggle="modal" data-target="#registro" >Registrarse</a></p>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-10 col-md-offset-3">
                        <br>
                        <button type="button" class="btn ">iniciar sesion con facebook</button>
                    </div>
                </div>

            </div>
            <div class="col-md-12">
                <br>
                <p>
                    <a href="#" ><img src="img/face.jpg" title="facebook" width="40px" height="40px"/></a>
                    <a href="#" ><img src="img/twitter.jpg" title="twitter" width="40px" height="40px"/></a>
                    <a href="#" ><img src="img/plus.jpg" title="google plus" width="40px" height="40px"/></a>
                </p>
            </div>
        </div>
        <hr>
        <footer>
            <div class="container">
                <p ><a href="#" class="cfooter">Terminos y Condiciones</a></p>
                <p ></p>
                <p class="derecha">© Company 2014</p>
            </div>
        </footer>
        <!--Ventana modal de registro-->
        <div class="modal fade" id="registro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Registro</h4>
                    </div>
                    <div class="modal-body">
                        <table>
							<tr>
								<td>Nombre: </td>
								<td><input type="text" name="nombre" class="form-control" placeholder="Nombre" required autofocus></td>
							</tr>
							<tr>
								<td>Apellido Paterno: </td>
								<td><input type="text" name="ap_paterno" class="form-control" placeholder="Apellido Paterno" required autofocus></td>
							</tr>
							<tr>
								<td>Apellido Materno: </td>
								<td><input type="text" name="ap_materno" class="form-control" placeholder="Apellido Materno" required autofocus></td>
							</tr>
							<tr>
								<td>Email: </td>
								<td><input type="text" name="email" class="form-control" placeholder="Email" required autofocus></td>
							</tr>
							<tr>
								<td>Re-enter Email: </td>
								<td><input type="text" name="email2" class="form-control" placeholder="Re-enter Email" required autofocus></td>
							</tr>
							<tr>
								<td>Password: </td>
								<td><input type="password" name="password" class="form-control" placeholder="Password" required autofocus></td>
							</tr>
							<tr>
								<td>Fecha de Nacimiento: </td>
								<td><?php 	dia();
											mes();
											year();?></td>
							</tr>
						</table>
                    </div>
                    <div class="modal-footer">	
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Registrarme</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
