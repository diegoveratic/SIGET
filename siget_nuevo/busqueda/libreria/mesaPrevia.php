<?php
class mesaPrevia{
 public $id;
 public $materia;
 public $curso;
 public $docente;
 public $mes;
 public $dia;
 public $hora;
 static $recs;
 
 function guardar(){  // crea la mesa cargado en los atributos
   $sql="insert into mesaprevia(materia,curso,docente,mes,dia,hora)
   values('$this->materia','$this->curso','$this->docente','$this->mes','$this->dia','$this->hora')";
   mysql_query($sql);
 }
 
 function actualizar($nro=0)	// actualiza la mesa  cargado en los atributos
	{
			$sql="update mesaprevia set materia='$this->materia', curso='$this->curso',docente='$this->docente',mes='$this->mes',dia='$this->dia',hora='$this->hora' where id = $nro";
			mysql_query($sql); // ejecuta la consulta para actualizar 
	}
	
 function borrar($nro=0)	// elimina la mesa
	{
			$sql="delete from mesaprevia where id=$nro";
			mysql_query($sql); // ejecuta la consulta para eliminar
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de mesa lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from mesaprevia where id = $nro";
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
    $sql="select * from mesaprevia";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
 
 static function buscar($str){
    $sql="select * from mesaprevia where materia like '%$str%' or curso like '%$str%' or docente like '%$str%' or mes like '%$str%' or dia='$str' or hora='$str'";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
 
 }