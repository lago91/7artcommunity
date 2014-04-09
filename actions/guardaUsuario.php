<?php
	if($_POST)
	{
		include ("../actions/funciones.php");
		$query=new Query();
		$nombre=__($_POST["nombre"]);
                $ap_paterno=__($_POST["ap_paterno"]);
                $ap_materno=__($_POST["ap_materno"]);
                $email=__($_POST["email"]);
                $email2=__($_POST["email2"]);
                $password=__($_POST["password"]); 
                $cadena=$_POST['dia'].'-'.$_POST['mes'].'-'.$_POST['year'];
                $tiempo = explode ("-", $cadena); 
                $fecha = $tiempo[2] . "-" . $tiempo[1] . "-" . $tiempo[0]; 
 		if(empty ($nombre))
		{
			header("Location:index.php");
		}
		else
			{
				if(!esCadena($nombre))
				{
					echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ Solo debe contener letras. Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
				}
			}
			
        if(empty ($ap_paterno))
		{
			header("Location:index.php");
		}
		else
			{
				if(!esCadena($ap_paterno))
				{
					echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ Solo debe contener letras. Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
				}
			}
			
        if(empty ($ap_materno))
		{
			header("Location:index.php");
		}
		else
			{
				if(!esCadena($ap_materno))
				{
					echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ Solo debe contener letras. Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
				}
			}
        if(empty ($email))
		{
			header("Location:index.php");
		}
        else 
			if(!esEmail(limpiaEmail($email)))
			{
			echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ El email no es valido. Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
			}
			else 
			{
				include_once'Query.inc';
				$email = limpiaEmail($email);
				$sql = new Query();
				$valores = $sql->select("*","usuario","email='$email'");
				if(($valores)>0)
				{
					echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ El email ya existe.Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
				} 
			}
        if($email != $email2)
		{
			echo '<SCRIPT language="JavaScript">alert("!!ERROR¡¡ Los Correos No Son Iguales. Pulse para volver al registro");
					document.location=("index.php"); 
			    		 </script>';  
		}		
        if(empty ($password))
		{
			header("Location:index.php");
		}
		else 
		{
			$nombre=$nombre;
			$codigoverificacion = rand(0000000000,9999999999);
			$headers = "From: support@7artcommunity.com"; 
			$mensaje = "Usted solicito un registro en 7artcommunity.com, n 
			Para confirmarlo debe hacer click en el siguiente enlace: n 
			http://7artcommunity.com/confirmacion.php?codigo=".$codigoverificacion; 
			if (mail("$email","Confirmacion de registro en 7artcommunity.com","$mensaje","$headers"))
			{	
				$query->insert("usuario","nombre, ap_paterno, ap_materno, email, password, tipo, pais, estado, fecha_nacimiento, url_imagen, biografia, codigo, status","'$nombre','$ap_paterno','$ap_materno','$email','$password','0','0','0','$fecha','0','0','$codigoverificacion',0");
				echo '<SCRIPT language="JavaScript">alert("Tu cuenta ha sido registrada, sin embargo, esta requiere que la confirmes desde el email que ingresaste en el registro.");
					document.location=("index.php"); 
			    		 </script>'; 
                        }
			else{ echo "Ha ocurrido un error y no se puede enviar el correo";} 
                        }
	}
	else
{
	#redirecciona si la pagina se carga directamente
	header("Location:index.php");
}
?>