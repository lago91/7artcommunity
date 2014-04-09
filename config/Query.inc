<?php
class Query
{
    private $idConexion;
    private $idQuery;
    private $arregloObj = array();
    private $arregloArr = array();
    private $sql;

    //const PI = 3.141592;

    function __construct()
    {
	include_once("Conexion.inc");
	$this->idConexion = new Conexion();
	if(RESULTTRACE) //print("<p>Objeto instanciado en &quot;Query&quot;.</p>");
	return TRUE; 
    }
   
    function __destruct()
    {
		if(RESULTTRACE) //print("<p>Objeto instanciado en &quot;Query&quot, Destruido.</p>");
	    return; 
    }
    
    function insert($tabla = NULL, $campos = NULL, $values = NULL)
    {
    	if(!empty($tabla) && !empty($campos) && !empty($values))
    	{
    		unset($this->sql, $this->idquery);
    		$this->sql = "INSERT INTO $tabla ($campos) VALUES ($values)";
    		//echo "<code>$this->sql</code>";
    		$this->idQuery = mysql_query($this->sql) 
    				//or die("ERROR en insert". mysql_error().mysql_errno());
    				or die(self::muestraError(mysql_errno()));
    		return TRUE;
    	}
    	else
    	{
    		exit("<p>ERROR la sentencia INSERT no es valida </p>");
    	}
    }
    
    function muestraError($no)
    {
    	switch ($no)
    	{
    		case 1062: echo " Datos duplicados";
    	}
    }
    
function select($campos = NULL, $tablas = NULL, $where = '1', $adicionales = NULL, $tipo = "obj")
	{
		if(!empty($campos) || !empty($tablas))
		{
			unset($this->sql,$this->idQuery,$this->arregloObj,$this->arregloArr);
			$this->sql = "SELECT ".$campos." FROM ".$tablas." WHERE ".$where." ".$adicionales;
            $this->idQuery = @mysql_query($this->sql)
            	or die("Error en mySQL: ".mysql_errno()." ".mysql_error()." ".__FILE__.
            								" ".__LINE__." ".__CLASS__." ".__FUNCTION__.
            								" ".__METHOD__." ".$_SERVER['SCRIPT_FILENAME']." ".$this->sql);
            	if(RESULTTRACE)//echo "<p>Query exitoso <code> $this->sql</code> </p>";
            	
			if ($this->numRegistros()>0)
			{
				if(strcmp($tipo,"obj")==0)
				{
					$this->arregloObj = array();
					while($row = mysql_fetch_object($this->idQuery))
					{
						$this->arregloObj[] = $row;
					}
                    @mysql_free_result($this->idQuery);
					return $this->arregloObj;
				}
				else if(strcmp($tipo,"arr")==0)
				{
					$this->arregloArr = array();
					$this->arregloArr = mysql_fetch_array($this->idQuery,MYSQL_NUM);
                    @mysql_free_result($this->idQuery);
					return $this->arregloArr;
				}
			}
			else
			{
				return NULL;
			}
		}
		else
		{
			exit("<p>ERROR: No has especificado un query \"SELECT\" v&oacute;lido.</p>");
		}
	}
	
	function numRegistros()
	{
		return ($this->idQuery)?mysql_num_rows($this->idQuery):0;
	}

} 
?>