<?php
class equivalencia{
 public $id;
 public $dia;
 public $mes;
 public $turno;
 public $informacion;
 public $taller;
 static $recs;
 
 function guardar(){  // crea la mesa cargado en los atributos
   $sql="insert into equivalencia(dia,mes,turno,informacion)
   values('$this->dia','$this->mes','$this->turno','$this->informacion','$this->taller')";
   mysql_query($sql);
 }
 
 function actualizar($nro=0)	// actualiza la mesa  cargado en los atributos
	{
			$sql="update equivalencia set dia='$this->dia', mes='$this->mes',turno='$this->turno',informacion='$this->informacion',taller='$this->taller' where id = $nro";
			mysql_query($sql); // ejecuta la consulta para actualizar 
	}
	
 function borrar($nro=0)	// elimina la mesa
	{
			$sql="delete from equivalencia where id=$nro";
			mysql_query($sql); // ejecuta la consulta para eliminar
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de mesa lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from equivalencia where id = $nro";
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
    $sql="select * from equivalencia";
    $rs=mysql_query($sql);
	$mesaADS=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaADS[]=$fila;
	}return $mesaR;
 
 }
 
 static function buscar($str){
    $sql="select * from equivalencia where dia='$str' or mes like '%$str%' or turno like '%$str%' or informacion like '%$str%' or taller like '%$str%'";
    $rs=mysql_query($sql);
	$mesaADS=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaADS[]=$fila;
	}return $mesaADS;
 
 }
 
 }