<?php

#Limpia los datos
include 'config.php';
include 'query.inc';
//@session_start();


function __($var)
{
	$dato =	htmlentities($var,ENT_QUOTES,'UTF-8');
	$dato = stripslashes($dato);
	return trim($dato);
}

function year(){
	echo "<select name='year' >";
	echo ("<option value='0'>a&ntilde;o:</option>");
	for ($i=date('Y'); $i>=1905; $i--){
		echo ("<option value='".$i."'>".$i."</option>");
		}
	echo"</select>";
}

function mes(){
	$meses=array(
		0=>"mes:",
		1=>"enero",
		2=>"febrero",
		3=>"marzo",
		4=>"abril",
		5=>"mayo",
		6=>"junio",
		7=>"julio",
		8=>"agosto",
		9=>"septiembre",
		10=>"octubre",
		11=>"noviembre",
		12=>"diciembre"		
	);
	echo "<select name='mes' >";	
	for ($i=0; $i<=12; $i++){
		echo ("<option  value='".$i."'>".$meses[$i]."</option>");
		}
	echo"</select>";
}

function dia(){
	echo "<select name='dia' >";
	echo ("<option value='0'>d&iacute;a:</option>");
	for ($i=1; $i<=31; $i++){
		echo ("<option class='form-control' value='".$i."'>".$i."</option>");
		}
	echo"</select>";
}

function esCadena($cadena)
{
	$palabrasAcept = "/[^a-zA-Z]/";
	if(preg_match($palabrasAcept,$cadena)) 
	{
		return false;
	}
	else 
	{
		return true;
	}
}

function esEmail($email = "")
{
	$car = "/^([a-z0-9+_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,6}\$/i";
	if (strpos($email, '@') !== false && strpos($email, '.') !== false)
	{
		if (preg_match($car, $email))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	else 
	{
		return false;
	}
}

function limpiaEmail($email)
{
	$limpio = preg_replace('/[^a-z0-9+_.@-]/i', '', $email);
	return strtolower($limpio);
}

function codificaMail($email="")
{
	$mailCodificado = "";
    for ($i=0; $i < strlen($email); $i++)
	{
        if(rand(0,1) == 0)
		{
            $mailCodificado .= "&#" . (ord($email[$i])) . ";";
        }
		else
		{
            $mailCodificado .= "&#X" . dechex(ord($email[$i])) . ";";
        }
    }
	return $mailCodificado;
}

function mostraredad(){
        $id=$_SESSION["idusuario"];
		$sql= new Query();
		$valores = $sql->select("fecha_nacimiento, CURDATE(),(YEAR(CURDATE())-YEAR(fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(`usuario`.`fecha_nacimiento`,'%m-%d'), 0, -1))as edad","usuario","idusuario='$id'");
		if($valores){
		foreach($valores as $valor){
		echo $valor->edad;
		}
		}
}

function mostrarchamba(){
      $id=$_SESSION["idusuario"];
      $query = new Query();
	  $noti = $query->select("*","trabajo","usuario_idusuario='$id'","order by fecha desc");
	  if($noti){
	  foreach($noti as $not){
	  echo "<h5 align='left'>".$not->nombret." ".$not->posicion." ".$not->fecha." </h5>";
	  }
	  
}
}



function muestranot(){
	  $query = new Query();
	  $noti = $query->select("*","noticia","1","order by idnoticia desc limit 9");
	  if($noti){
        echo "<div id='filter-container' class='cf'>";
		foreach ($noti as $not){
	    echo "<figure class='".$not->categoria."'> <a class='thumb' href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."'>";
		echo "<img alt='alt' src='".$not->url_imagen."'"; 
	  	echo "/></a> <figcaption> <a href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."'>";
		echo "<h3 class='heading'>";
        echo $not->titulo;
        echo "</h3></a>";			
        echo "<div class='portfolio-cat'> <a href=''>";
        echo $not->categoria;		
        echo "</a></div> </figcaption> </figure>";	
        	
	  	}
		echo "</div>";	
	  
	  }
		
}

function avanzarnot($id){
         $query = new Query();
		 $noti = $query->select("*","noticia","idnoticia='$id'");
		 
		 if($noti){
		 echo "<div class='project-pager cf'>";
		    foreach($noti as $not){
			        $a = $not->idnoticia-1;
					$b = $not->idnoticia+1;
					echo "<a class='previous-project' href='noticia.php?idnoticia=".$a."'>&#8592; Anterior Noticia</a>";
					echo "<a class='next-project' href='noticia.php?idnoticia=".$b."'>Siguiente Noticia &#8594;</a>";
				   
			
			}
			echo " </div>";
		 }
		 
}

function muestranotcompleta($id){
         include_once 'Query.inc';
		 $query = new Query();
		 $noti = $query->select("*","noticia","idnoticia='$id'");
		 
		 if($noti){
		    echo "<!-- project box -->";
		    echo "<div id='project-box' class='cf'>";
			foreach ($noti as $not){
			        echo "<!-- slider -->";
					echo "<div class='project-slider'>";
				    echo "<div class='flexslider'>";
					echo "<ul class='slides'><li>";
					echo "<img height='367' width='940' src='".$not->url_imagen."' alt='alt text' />";
					echo "</li><li>";
					echo "<img height='367' width='940' src='".$not->url_imagen2."' alt='alt text' />";
					echo "</li><li>";
					echo "<img height='367' width='940' src='".$not->url_imagen3."' alt='alt text' />";
					echo "</li></ul></div></div><!-- ENDS slider -->";
					
					echo "<div class='info'>";
	        	    echo "<p><strong>Publicado por:  </strong>";
					mostrarusuarionot($id);
					echo "</p>";
	        		echo "<p><strong>Fecha:</strong>".$not->fecha."</p>";
	        		echo "<p><a href='' class='launch'></a></p>";
	        		echo "</div>";
					
					echo "<!-- entry-content --><div class='entry-content'>";
	        		echo "<h2 class='heading'>".$not->descripcion."</h2>";
	        			
	        		echo "<div class='multicolumn'>";
	        		echo "<p>".$not->noticia_completa."</p>";
	        			
	        		echo "</div></div><!-- ENDS entry content --></div><!-- ENDS project box -->";	  
					
					
		 }
		 
}
}

function mostrarusuarionot($id){
         $query = new Query();
		 $usu = $query->select("idusuario,nombre,ap_paterno,ap_materno,idnoticia,usuario_idusuario","usuario,noticia","idusuario=usuario_idusuario and idnoticia='$id'");
		 if($usu){
		 foreach($usu as $us){
		 echo $us->nombre." ".$us->ap_paterno." ".$us->ap_materno;
		 }
		 }
}

function mostrarnotireciente(){
      $query = new Query();
	  $noti = $query->select("*","noticia","1","order by idnoticia desc limit 3");
	  if($noti){
	   echo "<div class='widget-block'><h4>Noticias Recientes</h4>"; 
	  foreach($noti as $not){
	  echo "<div class='recent-post cf'> <a class='thumb' href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."'><img alt='Post' height='54' width='54' src='".$not->url_imagen."'/></a>"; 
      echo "<div class='post-head'> <a href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."'>".$not->descripcion."</a><span>".$not->fecha."</span>"; 
      echo "</div></div> ";
      }
	  echo "</div>";
	  }

}

function mostrarsimilarnot($id){
         
	     $query = new Query();
		 $noti = $query->select("*","noticia","idnoticia='$id'","limit 4");
		 
		 if($noti){
		 
		 echo "<div class='related-list cf'>";
		 foreach($noti as $not){
		
		        echo "<figure><a href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."' class='thumb'><img height='100' width='195' src='".$not->url_imagen."' alt='Alt text' /></a>";
				echo "<a href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."' class='heading'>".$not->titulo."</a>";
				echo "</figure>";
}						
						
						
				echo "</div>";
}
}

function mostrarslidesnot(){
      $query = new Query();
	  $noti = $query->select("*","noticia","1","order by idnoticia desc limit 7");
	  if($noti){
	   echo "<div class='main-slider-content'>";
       echo "<ul class='sliders-wrap-inner'>";
	  foreach($noti as $not){
	        echo "<li><img title='' alt='alt' height='367' width='940' src='".$not->url_imagen."'/>";
            echo "<div class='slider-description'><h4>".$not->titulo."</h4>"; 
            echo "<p>".$not->descripcion."";
		    echo "<a class='link' href='noticia.php?idnoticia=".$not->idnoticia."categoria=".$not->categoria."'>Leer Mas </a> </p>"; 
            echo "</div></li>";
            }
echo "</ul></div>";
}
}

function mostrarslidessmall(){
        $query = new Query();
	    $noti = $query->select("*","noticia","1","order by idnoticia desc limit 7");
	    if($noti){
		echo "<ul class='navigator-wrap-inner'>";
		  foreach($noti as $not){
            echo "<li><img alt='alt' height='100' width='195' src='".$not->url_imagen."'/></li>";
           
          }
		  echo "</ul>"; 
}
}





function guardaArchivo($carpeta,$titulo){
	include_once("Documento.inc");
	$img = new Documento();
	$img->titulo =$titulo; 
	$img->archivo = $_FILES["imagen"]["tmp_name"];
	$img->error = $_FILES["imagen"]["error"];
	$img->nombre = $_FILES["imagen"]["name"];
	$img->tamaño = $_FILES["imagen"]["size"];
	$img->tipo = $_FILES["imagen"]["type"];
	$img->destino = $carpeta;
	//$img->destino = "imagenes";
	
	if($img->verificarerror()){
		echo "Tu muy bien no hubo error";
	
	if ($img->verificaextension()){
		echo "<p>Eso vas por buen camino la extension es CORRECTA</p>";
	
	if($img->cambiarNombre()){
		echo "<p>Ahuevo se cambio el nombre</p>";
	
	if ($img->copia()){
	    $nombresitoimg=$img->nombre;
		
		echo "<p>Tu Tu Tu muy bien si se copio la imagen</p>";
	}
	}
	}
	return $nombresitoimg;
	}
}
function guardaMusica($carpeta,$titulo){
	include_once("Documento.inc");
	$musica = new Documento();
	$musica->titulo =$titulo; 
	$musica->archivo = $_FILES["sonido"]["tmp_name"];
	$musica->error = $_FILES["sonido"]["error"];
	$musica->nombre = $_FILES["sonido"]["name"];
	$musica->tamaño = $_FILES["sonido"]["size"];
	$musica->tipo = $_FILES["sonido"]["type"];
	$musica->destino = $carpeta;
	
	if($musica->verificarerror()){
		echo "Sin Errores";
	
	if ($musica->verificaextensionMusica()){
		echo "<p>Extencion admitida</p>";
	
	if($musica->cambiarNombre()){
		echo "<p>Nombre cambiado</p>";
	
	if ($musica->copia()){
	    $nombreMusica=$musica->nombre;
		
		echo "<p>Cancion Copiada</p>";
	}
	}
	}
	return $nombreMusica;
	}
}
function guardaArchivo1($carpeta,$titulo){
	include_once("Documento.inc");
	$img = new Documento();
	$img->titulo =$titulo; 
	$img->archivo = $_FILES["imagen"]["tmp_name"];
	$img->error = $_FILES["imagen"]["error"];
	$img->nombre = $_FILES["imagen"]["name"];
	$img->tamaño = $_FILES["imagen"]["size"];
	$img->tipo = $_FILES["imagen"]["type"];
	$img->destino = "imagenesnoti";
	
	if($img->verificarerror()){
		echo "Tu muy bien no hubo error";
	
	if ($img->verificaextension()){
		echo "<p>Eso vas por buen camino la extension es CORRECTA</p>";
	
	if($img->cambiarNombre()){
		echo "<p>Ahuevo se cambio el nombre</p>";
	
	if ($img->copia()){
	    $nombresitoimg=$img->nombre;
		
		echo "<p>Tu Tu Tu muy bien si se copio la imagen</p>";
	}
	}
	}
	return $nombresitoimg;
	}
}
function guardaSonido($carpeta,$titulo){
	include_once("Documento.inc");
	$img = new Documento();
	$img->titulo =$titulo; 
	$img->archivo = $_FILES["sonido"]["tmp_name"];
	$img->error = $_FILES["sonido"]["error"];
	$img->nombre = $_FILES["sonido"]["name"];
	$img->tamaño = $_FILES["sonido"]["size"];
	$img->tipo = $_FILES["sonido"]["type"];
	$img->destino = $carpeta;
	//$img->destino = "imagenes";
	
	if($img->verificarerror()){
		echo "Tu muy bien no hubo error";
	
	if ($img->verificaextensionSonido()){
		echo "<p>Eso vas por buen camino la extension es CORRECTA</p>";
	
		//if($img->cambiarNombre()){
		//echo "<p>Ahuevo se cambio el nombre</p>";
	
	if ($img->copia()){
	    $nombresitoimg=$img->nombre;
		
		echo "<p>Tu Tu Tu muy bien si se copio la imagen</p>";
	}
		//}
	}
	return $nombresitoimg;
	}
}
function guardaArchivo3($carpeta,$titulo){
	include_once("Documento.inc");
	$img = new Documento();
	$img->titulo =$titulo; 
	$img->archivo = $_FILES["imagen2"]["tmp_name"];
	$img->error = $_FILES["imagen2"]["error"];
	$img->nombre = $_FILES["imagen2"]["name"];
	$img->tamaño = $_FILES["imagen2"]["size"];
	$img->tipo = $_FILES["imagen2"]["type"];
	$img->destino = "imagenesnoti";
	
	if($img->verificarerror()){
		echo "Tu muy bien no hubo error";
	
	if ($img->verificaextension()){
		echo "<p>Eso vas por buen camino la extension es CORRECTA</p>";
	
	if($img->cambiarNombre()){
		echo "<p>Ahuevo se cambio el nombre</p>";
	
	if ($img->copia()){
	    $nombresitoimg=$img->nombre;
		
		echo "<p>Tu Tu Tu muy bien si se copio la imagen</p>";
	}
	}
	}
	return $nombresitoimg;
	}
}
function isUser($user){
	include_once 'Query.inc';
	
	$sql = new Query();
	$valores = $sql->select("*","usuario","email like '$user' AND status=1");
	if($valores){
		foreach ($valores as $valor){
			if ($valor){			
				if ($user == $valor->email){
                    $_SESSION["idusuario"]=$valor->idusuario;				
					$_SESSION["nombre"]=$valor->nombre;
					$_SESSION["email"]=$valor->email;
					$_SESSION["url_imagen"]=$valor->url_imagen;
					$_SESSION["ap_paterno"]=$valor->ap_paterno;
					$_SESSION["ap_materno"]=$valor->ap_materno;
					$_SESSION["tipo"]=$valor->tipo;
					$_SESSION["biografia"]=$valor->biografia;
					$_SESSION["pais"]=$valor->pais;
					$_SESSION["estado"]=$valor->estado;
					$_SESSION["estudio"]=$valor->estudio;
					$_SESSION["fecha_nacimiento"]=$valor->fecha_nacimiento;
					$_SESSION["activo"]=true;
					
					
					return true;
				}
				else{
					//echo "<p>Usuario Incorrecto</p>";
					return false;
				}
			}
			else{ 
				//echo("<p>Usuario No existe</p>");
				return false;
			}
		}
	}
}

function isPasswordUser($password){
	include_once 'Query.inc';
	
	$sql = new Query();
	$valores = $sql->select("*","usuario","password like '$password'");
	if($valores){
	foreach ($valores as $valor){
		if ($valor){
			if ($password == $valor->password){
				return true;
			}
			else{
				//echo "<p>Password Incorrecto</p>";
				return false;
			}
		}
		else{
			//echo("<p>Usuario No existe</p>");
			return false;
		}
	}
	}
}

function daSonido(){
    include_once 'Query.inc';
	$id=__($_SESSION["idusuario"]);
    $sql = new Query();
    $valores1 = $sql->select("*,(DAY(fecha))as dia, (MONTHNAME(fecha))as mes ","sonido","status=1 AND usuario_idusuario='$id'","order by idsonido desc");
	if($valores1){
	foreach ($valores1 as $valor){
    $url=$valor->nombre;
	
                                                    
					echo '<article class="format-audio">
						<div class="box cf">
							<div class="entry-date"><div class="number">'.$valor->dia.'</div><div class="month">'.$valor->mes.'</div></div>
							
							<div class="excerpt">
								<a href="perfil_secundario.php" class="post-heading" >'.$valor->nombre.'</a>
								<!-- jplayer -->
								<audio id="audio" controls="controls">
<source src="'.$valor->url_sonido.'" type="audio/mp3" />
</audio>
 
 
<script>
 
var myAudio = document.getElementById("audio");
var btnPlay = document.getElementById("play");
var btnPause = document.getElementById("pause");
 
btnPlay.addEventListener("click", function(){myAudio.play();}, false);
btnPause.addEventListener("click", function(){myAudio.pause();}, false);
 
</script>
								
								
								<!-- ENDS jplayer -->

							</div>
							
						<div class="meta">
								
								
						</div>
					</article><br><br><br><br>';
				  }}}

function daImagen()
{
	include_once 'Query.inc';
	$id=__($_SESSION["idusuario"]);
    $sql = new Query();
    $valores1 = $sql->select("*","imagenes","status=1 AND usuario_idusuario='$id'");
	if($valores1){
	foreach ($valores1 as $valor){
    $url=$valor->nombre;
		echo '<a href="'.$valor->url_imagen.'"
						class="shadowbox"><img src="'.$valor->url_imagen.'" title="prueba" alt="Supremus Lucernarium" class="thumb" width="10%" height="10%" /></a>';
}}}

function daVideo()
{ 
     include_once 'Query.inc';
                                                   $id=__($_SESSION["idusuario"]);
                                                    $sql = new Query();
                                                    $valores = $sql->select("*,(DAY(fecha))as dia, (MONTHNAME(fecha))as mes","videos","status=1 AND usuario_idusuario='$id'");
													if($valores){
													
                                                    foreach ($valores as $valorV){
                                                        $url=$valorV->url_video;                                           
                                                    

                                                   echo '<article class="format-video">
						<div class="video-container">
							<iframe src="'.$valorV->url_video.'" ></iframe>
                                                        
                                                    
                                                                
						</div>
						<div class="box cf">
							<div class="entry-date"><div class="number">'.$valorV->dia.'</div><div class="month">'.$valorV->mes.'</div></div>
							
							<div class="excerpt">
								<p></p>
								
								
							</div>
							
							<div class="meta">
								</div>
								
						</div>
                                            
					</article><br><br><br><br>';
                            }}       } 

function getParam($param, $default) {
	$result = $default;
	if (isset($param)) {
  		$result = (get_magic_quotes_gpc()) ? $param : addslashes($param);
	}
	return trim($result);
}
function getYoutubeID($url) {
	$tube = parse_url($url);
	if ($tube["path"] == "/watch") {
		parse_str($tube["query"], $query);
		$id = $query["v"];
	} else {
		$id = "";	
	}
	return $id;
}

function Extraer($q){
	include_once ("Query.inc");
	$sql = new Query();
   	$query = mysql_query("SELECT * FROM usuario WHERE nombre LIKE '%$q%' OR ap_paterno LIKE '%$q%' OR ap_materno LIKE '%$q%' OR email LIKE '%$q%' OR idusuario LIKE '%$q%'");
	if (mysql_num_rows($query)==0){
		print 'No se encontraron resultados';
	}
	if($q==NULL){echo' ';}
	else
	{
		
		while($row=mysql_fetch_assoc($query)){
			
			$idmandar=$row['idusuario'];
			print '<li><a href="perfilbusqueda.php?id1='.$idmandar.'">'.$row['nombre'].' '.$row['ap_paterno'].' '.$row['ap_materno'].'</a></li><br>';
			
		}
	}
	#else if($q==NULL){echo' ';}
}
function daImagenOtro($id1)
{
	include_once 'Query.inc';
	
	
    $sql = new Query();
    $valores1 = $sql->select("*","imagenes","status=1 AND usuario_idusuario='$id1'");
	
	if($valores1){
    foreach ($valores1 as $valor){
    $url=$valor->nombre;
		echo '<a href="'.$valor->url_imagen.'"
						class="shadowbox"><img src="'.$valor->url_imagen.'" title="prueba" alt="Supremus Lucernarium" class="thumb" width="10%" height="10%" /></a>';
}}}
function daSonidoOtro($id1)
{
    include_once 'Query.inc';

	
    $sql = new Query();
    $valores1 = $sql->select("*,(DAY(fecha))as dia, (MONTHNAME(fecha))as mes ","sonido","status=1 AND usuario_idusuario='$id1'");
	
	if($valores1){
    foreach ($valores1 as $valor){
    $url=$valor->nombre;
     echo '<article class="format-audio">
						<div class="box cf">
							<div class="entry-date"><div class="number">'.$valor->dia.'</div><div class="month">'.$valor->mes.'</div></div>
							
							<div class="excerpt">
								<a href="perfil_secundario.php" class="post-heading" >'.$valor->url_sonido.'</a>
								<!-- jplayer -->
								<audio id="audio" controls="controls">
<source src="musica/'.$valor->nombre.'" type="audio/mp3" />
</audio>
 
 
<script>
 
var myAudio = document.getElementById("audio");
var btnPlay = document.getElementById("play");
var btnPause = document.getElementById("pause");
 
btnPlay.addEventListener("click", function(){myAudio.play();}, false);
btnPause.addEventListener("click", function(){myAudio.pause();}, false);
 
</script>
								
								
								<!-- ENDS jplayer -->

							</div>
							
						<div class="meta">
								
								
						</div>
					</article><br><br><br><br>';
					  } }}

function daVideoOtro($id1)
{ 
                                                   include_once 'Query.inc';
                                                   
													
                                                    $sql = new Query();
                                                    $valores = $sql->select("*,(DAY(fecha))as dia, (MONTHNAME(fecha))as mes","videos","status=1 AND usuario_idusuario='$id1'");
													if($valores){
                                                    foreach ($valores as $valorV){
                                                        $url=$valorV->url_video;                                           
                                                    

                                                   echo '<article class="format-video">
						<div class="video-container">
							<iframe src="'.$valorV->url_video.'" ></iframe>
                                                        
                                                    
                                                                
						</div>
						<div class="box cf">
							<div class="entry-date"><div class="number">'.$valorV->dia.'</div><div class="month">'.$valorV->mes.'</div></div>
							
							<div class="excerpt">
								<p></p>
								
								
							</div>
							
							<div class="meta">
								</div>
								
						</div>
                                            
					</article><br><br><br><br>';
                                   } }}
								   
function mostrarperfilbusqueda($id1){
						include_once 'Query.inc';
						$sql = new Query();
    $valores1 = $sql->select("*","usuario","status=1 AND idusuario='$id1'");
	foreach ($valores1 as $valor){
    $url=$valor->nombre;
		echo'
		<aside id="sidebar">
        		
        		<ul>
	        		<li class="block">
		        		<h3 align="left">' .$valor->nombre." ".$valor->ap_paterno." ".$valor->ap_materno.' </h3><br>
						<img src='.$valor->url_imagen.' height="300" width="250">
						<br><br>
						<h2 class="heading">Extracto personal</h2><br>
						<blockquote>
			            <h3 align="justify">'.$valor->biografia.'</h3>
			            </blockquote>
						
	        		</li>
	        		
	        		<li class="block">
		        		<h2 class="heading">Datos Personales</h2><br>
						<h5 align="left">Puesto: '.$valor->tipo.'</h5>
						<h5 align="left">Fecha de Nacimiento: '.$valor->fecha_nacimiento.'</h5>
						<h5 align="left">Edad:';
						mostraredadbus($id1);
						echo '</h4>				
						<h5 align="left">Vive en:'.$valor->ciudad.",".$valor->estado.'</h5>
						<h5 align="left">Estudios: '.$valor->estudio.'</h5>
						<h5 align="left">E-mail: '.$valor->email.'</h5>
	        		     </li>
	        		
	        		    <li class="block">
		        		</li>
				<li class="block">
				<h2 class="heading">Mis Trabajos</h2><br>';
				mostrarchambabus($id1);
			    echo '</li>				
        		</ul>
        		
        	</aside>';
}
												  }
function mostraredadbus($id1){
 
		$sql= new Query();
		$valores = $sql->select("fecha_nacimiento, CURDATE(),(YEAR(CURDATE())-YEAR(fecha_nacimiento) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(`usuario`.`fecha_nacimiento`,'%m-%d'), 0, -1))as edad","usuario","idusuario='$id1'");
		if($valores){
		foreach($valores as $valor){
		echo $valor->edad;
		}
		}
}

function mostrarchambabus($id1){
     
      $query = new Query();
	  $noti = $query->select("*","trabajo","usuario_idusuario='$id1'","order by fecha desc");
	  if($noti){
	  foreach($noti as $not){
	  echo "<h5 align='left'>".$not->nombret." ".$not->posicion." ".$not->fecha." </h5>";
	  }
	  
}
}											
					  



?>                           