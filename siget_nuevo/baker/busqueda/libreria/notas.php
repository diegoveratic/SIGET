<?php
class Notas{
 public $id;
 public $nombre;
 public $apellido;
 public $curso;
 public $materia;
 public $nota1;
 public $trimestre;
 static $recs;
 
 function guardar(){  // crea el estudiante cargado en los atributos
   $sql="insert into notas (nombre,apellido,curso,materia,nota1,trimestre)
   values('$this->nombre','$this->apellido','$this->curso','$this->materia','$this->nota1','$this->trimestre')";
   mysql_query($sql);
 }
 
 function actualizar($nro=0)	// actualiza el estudiante cargado en los atributos
	{
			$sql="update notas set nombre='$this->nombre', apellido='$this->apellido',curso='$this->curso',materia='$this->materia',nota1='$this->nota1',trimestre='$this->trimestre' where id = $nro";
			mysql_query($sql); // ejecuta la consulta para actualizar 
	}
	
 function borrar($nro=0)	// elimina el estudiante
	{
			$sql="delete from notas where id=$nro";
			mysql_query($sql); // ejecuta la consulta para eliminar
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de estudiante lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from notas where id = $nro";
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
    $sql="select * from notas";
    $rs=mysql_query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $not[]=$fila;
	}return $not;
 
 }
 
 static function buscar($str){
    $sql="select * from notas where nombre like '%$str%' or apellido like '%$str%' or curso like '%$str%' or id='$str' or materia='$str' or nota1='$str'
	or trimestre='$str'";
    $rs=mysql_query($sql);
	$not=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $not[]=$fila;
	}return $not;
 
 }
 
 }