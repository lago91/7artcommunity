<?php
	if($_POST)
	{
		include ("funciones.php");
		$query=new Query();
		        $titulo=__($_POST["titulo"]);
                $categoria=__($_POST["cat"]);
                $descripcion=__($_POST["descripcion"]);
                $noticia_completa=__($_POST["noticia_completa"]);
                $idusuario=$_SESSION["idusuario"];
		if(empty ($titulo))
		{
			header("Location:subirnoticia.php");
		}
                if(empty ($categoria))
		{
			header("Location:subirnoticia.php");
		}
                if(empty ($descripcion))
		{
			header("Location:subirnoticia.php");
		}
                if(empty ($noticia_completa))
		{
			header("Location:subirnoticia.php");
		}
        $url_imagen= guardaArchivo1("imagenesnoti",$titulo2);
        $url_imagen2= guardaArchivo2("imagenesnoti",$titulo2);
        $url_imagen3= guardaArchivo3("imagenesnoti",$titulo2);		
		if(empty ($url_imagen)){
		header("Location:subirnoticia.php");
		}
		else 
		{
		$query->insert("noticia","titulo, fecha, categoria, usuario_idusuario, url_imagen, url_imagen2, url_imagen3, descripcion, noticia_completa, status","'$titulo',now(),'$categoria','$idusuario','imagenesnoti/$url_imagen','imagenesnoti/$url_imagen2','imagenesnoti/$url_imagen3','$descripcion','$noticia_completa','1'");
			echo '<SCRIPT language="JavaScript">alert("Noticia Registrada.Pulse para continuar");
				      	      document.location=("inicio.php"); 
				              </script>'; 
			}
		}
else
{
	#redirecciona si la pagina se carga directamente
	header("Location:subirnoticia.php");
}
?>