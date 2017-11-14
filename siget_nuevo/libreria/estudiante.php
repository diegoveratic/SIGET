<?php
class Estudiante{
 public $id;
 public $nombre;
 public $apellido;
 public $sexo;
 public $matricula;
 public $telefono;
 public $telefono1;
 public	$domicilio;
 public	$fecha;
 public	$lugar;
 public	$localidad;
 public	$codigop;
 public $legajo;
 public $edad;
 public $nacionalidad;
 static $recs;
 
 function guardar(){  // crea el estudiante cargado en los atributos
   $sql="insert into estudiante(nombre,apellido,sexo,matricula,telefono,telefono1,domicilio,fecha,lugar,localidad,codigop,legajo,edad,nacionalidad)
   values('$this->nombre','$this->apellido','$this->sexo','$this->matricula','$this->telefono','$this->telefono1','$this->domicilio','$this->fecha','$this->lugar','$this->localidad','$this->codigop','$this->legajo','$this->edad','$this->nacionalidad')";
   mysql_query($sql);
 }
 
 function actualizar($nro=0)	// actualiza el estudiante cargado en los atributos
	{
			$sql="update estudiante set nombre='$this->nombre', apellido='$this->apellido',sexo='$this->sexo',matricula='$this->matricula',telefono='$this->telefono',telefono1='$this->telefono1',domicilio='$this->domicilio',fecha='$this->fecha',lugar='$this->lugar',localidad='$this->localidad',codigop='$this->codigop',legajo='$this->legajo',edad='$this->edad',nacionalidad='$this->nacionalidad' where id = $nro";
			mysql_query($sql); // ejecuta la consulta para actualizar 
	}
	
 function borrar($nro=0)	// elimina el estudiante
	{
			$sql="delete from estudiante where id=$nro";
			mysql_query($sql); // ejecuta la consulta para eliminar
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de estudiante lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from estudiante where id = $nro";
			$result=mysql_query($sql);
			$recs=mysql_num_rows($result);
			$row=mysql_fetch_array($result);
			$id=$row['id'];
			//$nombre=$row['nombre'];
			//$nombre="ALGO";
			//$apellido=$row['apellido'];
			//$sexo=$row['sexo'];
			//$matricula=$row['matricula'];
			//$carrera=$row['carrera'];
			return $row;
		}
	}	
 
 static function mostrar_todos(){
    $sql="select * from estudiante";
    $rs=mysql_query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 static function buscar($str){
    $sql="select * from estudiante where nombre like '%$str%' or apellido like '%$str%' or matricula like '%$str%' or id='$str' or telefono='$str' or telefono1='$str' or domicilio='$str' or fecha='$str' or lugar='$str' or localidad='$str' or codigop='$str' or legajo='$str' or edad='$str' or nacionalidad like '%$str%'";
    $rs=mysql_query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 }