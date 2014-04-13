<?php
	if($_POST)
	{
	include ("funciones.php");
	
		        $tipo=__($_POST["tipo"]);
                $pais=__($_POST["pais"]);
                $estado=__($_POST["estado"]);
                $biografia=__($_POST["biografia"]);
				$estudio=__($_POST["estudio"]);
				$mailtemp=$_SESSION["email"];
		 $conexion = mysql_connect("localhost","root","karlita");
	if (!$conexion) {
		die("Fallo la conexión a la Base de Datos:" . mysql_error());
	}
	$seleccionar_bd = mysql_select_db("7art", $conexion);
	if (!$seleccionar_bd) {
		die("Fallo la selección de la Base de Datos: " . mysql_error());
	}			
        if(empty ($tipo))
		{
			header("Location:bienvenida.php");
		}
                if(empty ($pais))
		{
			header("Location:bienvenida.php");
		}
                if(empty ($estado))
		{
			header("Location:bienvenida.php");
		}
                if(empty ($biografia))
		{
			header("Location:bienvenida.php");
		}
		$url_imagen= guardaArchivo("imagenes",$titulo);
                
         if($url_imagen)       
		{
			$sql=mysql_query("update usuario set tipo='$tipo', pais='$pais', estado='$estado', estudio='$estudio', biografia='$biografia', url_imagen='imagenes/$url_imagen' where email='$mailtemp'",$conexion);
			echo '<SCRIPT language="JavaScript">alert("Tus datos han sido insertados. Pulse aqui para logearte");
					document.location=("inicio.php"); 
			    		 </script>'; 
		}
	}
else
{
	#redirecciona si la pagina se carga directamente
	header("Location:index.php");
}
mysql_close($conexion);
?>