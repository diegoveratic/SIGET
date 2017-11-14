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
 
/*	
function traer_datos($nro=0) // declara el constructor, si trae el numero de mesa lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from mesaregular where id = $nro";
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
    $sql="select * from mesaRegular";
    $rs=mysql_query($sql);
	$mesaR=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaR[]=$fila;
	}return $mesaR;
 
 }
 */
  static function mostrar_todos(){
    $sql="select * from mesaprevia";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
  static function buscartodo($str){
    $sql="select * from mesaprevia where materia like '%$str%' or curso like '%$str%' or docente like '%$str%' or mes like '%$str%' or dia='$str' or hora='$str'";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
  static function buscarmate($str){
    $sql="select * from mesaprevia where materia like '%$str%'";
    $rs=mysql_query($sql);
	$mesap=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
  static function buscarprofe($str){
    $sql="select * from mesaprevia where docente like '%$str%'";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
 static function buscaranio($str){
    $sql="select * from mesaprevia where curso like '%$str%'";
    $rs=mysql_query($sql);
	$mesaP=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysql_fetch_assoc($rs)){
	  $mesaP[]=$fila;
	}return $mesaP;
 
 }
 
 }