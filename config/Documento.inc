<?php
class Documento{

		
		public $archivo;
		public $error;
		public $nombre;
		public $tamano;
		public $tipo;
		public $destino;
		private $extension;
		
		function __construct(){}
		
		function __destruct(){}
				
		function verificarerror(){
			if($this -> error > 0){
		exit ("<p>Echale ganas hubo un error =/</p>");		
			}
				else{
					return true;
				} 
				
			}
		
		
		function verificaextension(){
			global $extensionesPermitidasIma;
			if (in_array(end(explode(".",$this->nombre)),$extensionesPermitidasIma))
			{
				$this->extension = end(explode(".",strtolower($this->nombre)));
				return TRUE;				
			}else{
			exit("<p>Le echas ganas pero el archivo no tiene la extension correcta
			las extensiones correctas son: ".implode(", ",$extensionesPermitidasIma)."</p>");
		}
		}
	
	function verificaextensionSonido(){
			global $extensionesPermitidasSonido;
			if (in_array(end(explode(".",$this->nombre)),$extensionesPermitidasSonido))
			{
				$this->extension = end(explode(".",strtolower($this->nombre)));
				return TRUE;				
			}else{
			exit("<p>Le echas ganas pero el archivo no tiene la extension correcta
			las extensiones correctas son: ".implode(", ",$extensionesPermitidasSonido)."</p>");
		}
		}
	
	
		
		
function cambiarNombre()
{
	$acento = array("&aacute;","&eacute;","&iacute;","&oacute;","&uacute;","&ntilde;","&Aacute;","&Eacute;","&Iacute;","&Oacute;","&Uacute;","&Ntilde;");
	$sinacento  = array('a','e','i','o','u','n','A','E','I','O','U','N');
	$prefijo = substr(md5(uniqid(rand())),0,5);
	$this->titulo = str_replace($acento,$sinacento,$this->titulo);
	$this->titulo = preg_replace("/[^a-z0-9-_.]/i", "", $this->titulo);
	$this->nombre = preg_replace("/[^a-z0-9-_.]/i", "", $this->nombre);
	$this->nombre = str_replace($this->nombre,"_",$this->nombre);
	$this->nombre = str_replace("_",$this->titulo.".".$this->extension,$this->nombre);
	$this->nombre = strtolower($this->nombre);
	$this->nombre = str_replace($acento,$sinacento,$this->nombre);
	$this->nombre = str_replace(" ","_",$this->nombre);
	$this->nombre= $prefijo."_".$this->nombre;
	return true;
	
	}

function copia()
{
	if(move_uploaded_file($this->archivo, $this->destino."/".$this->nombre))
	{
		unset($this->archivo);
		@unlink($this->archivo);
		return TRUE;
	}
	else 
	{
		exit("<p>ERROR. El archivo no puede ser copiado, intenta nuevamente.");
	}
}
}
 ?>