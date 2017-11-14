<?php
class Libro_d{
 public $id;
 public $id_libro;
 public $autor;
 public $titulo;
 public $edicion;
 public $anio;
 public $origen;
 public $tipo;
 public $area;
 public $materia;
 public $comentario;
 public $archivo;


 
 function guardar(){
   $sql="insert into libro_d(autor,titulo,edicion,anio,origen,tipo,area,materia,comentario,archivo)
   values('$this->autor','$this->titulo','$this->edicion','$this->anio','$this->origen','$this->tipo','$this->area','$this->materia','$this->comentario','$this->archivo')";
   mysql_query($sql);
 }
 
 function actualizar($nro=0)	// actualiza el estudiante cargado en los atributos
	{
			$sql="update libro_d set 
			Autor='$this->autor',
			Titulo='$this->titulo',
			anio='$this->anio',
			origen='$this->origen',
			tipo='$this->tipo',
			Area='$this->area',
			Materia='$this->materia',
			Comentario='$this->comentario',
			Archivo='$this->archivo'
			where id_libro = $nro";
			mysql_query($sql); // ejecuta la consulta para actualizar 
	}
	
 function borrar($nro=0)	// elimina el estudiante
	{
			$sql="delete from libro_d where id_libro=$nro";
			mysql_query($sql); // ejecuta la consulta para eliminar
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de estudiante lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from libro_d where id_libro = $nro";
			$result=mysql_query($sql);
			$recs=mysql_num_rows($result);
			$row=mysql_fetch_array($result);
			$id=$row['id_libro'];
			
			return $row;
		}
	}	
 
 static function mostrar_todos(){
    $sql="select * from libro_d";
    $rs=mysql_query($sql);
	$lib=array();
	
	while($fila=mysql_fetch_assoc($rs)){
	  $lib[]=$fila;
	}return $lib;
 
 }
 
 static function buscar($str){
    $sql="select * from libro_d where autor like '%$str%' or titulo like '%$str%' or tipo like '%$str%' or Area like '%$str%' or Materia like '%$str%' or id_libro='$str' ";
    $rs=mysql_query($sql);
	$lib=array();
	
	while($fila=mysql_fetch_assoc($rs)){
	  $lib[]=$fila;
	}return $lib;
 
 }
 
 static function buscar_tit($str,$tipo){
    if($tipo=='origen'){
    $sql="SELECT DISTINCT origen FROM libro_d WHERE origen LIKE '".$str."%' ORDER BY origen ASC";
	$resultado=mysql_query($sql);
	
	$data = array();
   
    while ($fila=mysql_fetch_assoc($resultado)) {
	    array_push($data, $fila['origen']);	
       
    }
    }
    //return json data
	return($data);
    //echo json_encode($data);
 }
 
 
 }