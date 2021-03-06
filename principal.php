<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <title></title>
    </head>
    <body>
        <!--Menu-->
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">7 Art Community</a>

                </div>
                <div class="navbar-collapse collapse">
                    <form class="nav navbar-nav navbar-form " role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar ...">
                            <span class='glyphicon glyphicon-search'></span>
                        </div>
                    </form>
                    

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Usuario: </a></li>
                        <li><a href="#">Inicio: </a></li>
                        <li><a href="#">Config: </a></li>
                    </ul>
                    

                </div>
            </div>
        </div>
        <!--fin de menu-->
        <br><br><br>

        <!-- Carousel
   ================================================== -->
        <div id="myCarousel" class="carousel slide container" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Example headline.</h1>
                            <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div><!-- /.carousel -->
        <br>
        <!--Noticias y Publicidad-->
        <div class="container">
            <div class="row">
                <!--div de publicidad-->
                <div class="col-md-3">

                </div><!-- /.col-lg-4 -->
                <!--div de noticias-->
                <div class="col-md-6">
                    <!--Noticias-->
                    <div class="panel panel-default">
                        <div class="panel-heading">Titulo de Noticia</div>
                        <div class="panel-body">
                            <audio id="audio" controls="controls">
								<source src="users/id/sonido" type="audio/mp3" />
							</audio>
                        </div>
                        <div class="panel-footer">
                            Autor
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Titulo de Noticia</h3>
                        </div>
                        <div class="panel-body">
                            kasmodjaosdjoasmdiamsid
                        </div>
                        <div class="panel-footer">
                            Autor
                        </div>
                    </div>
                </div><!-- /.col-lg-4 -->
                <!--div de publicidad-->
                <div class="col-md-3">

                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>
        <hr>
        <footer>
            <div class="container">
                <p ><a href="#" class="cfooter">Terminos y Condiciones</a></p>
                <p ></p>
                <p class="derecha">© Company 2014</p>
            </div>
        </footer>
        <!--fin noticias y publicicidad-->
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/docs.min.js"></script>
    </body>
</html>
