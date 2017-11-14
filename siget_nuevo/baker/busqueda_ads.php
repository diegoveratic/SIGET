<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/mesaADS.php");

$consulta_por =  $_REQUEST['opcion'];
$str_b = $_REQUEST['busca'];
//echo $str_b;

if ($consulta_por == 'nada') {
	$mesa=Equivalencia::mostrar_todos();
} elseif ($consulta_por == 'mes') {
	$mesa=Equivalencia::buscarmes($str_b);
} elseif ($consulta_por == 'turno') {
	$mesa=Equivalencia::buscarturno($str_b);
}	 elseif ($consulta_por == 'taller') {
	$mesa=Equivalencia::buscartaller($str_b);
} else {
	echo "Error en la opcion elegida";
}


?>
<?php
if (isset($mesa)){
?>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

		<link href="css/estilos.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<div class="panel panel-default " >
 
  <div class="panel-heading " >Equivalencias Encontradas</div> 
	<div  style="overflow: scroll;height: 850px;"> 	  
	<header>
			<div class="alert alert-info">
			<h2>Equivalencias</h2>
			</div>
		</header>
	 <table class="table">
				<tr>
					
					<th>Dia</th>
					<th>Mes</th>
					<th>Turno</th>
					<th>Informacion</th>
					<th>Taller nº</th>
				</tr>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($mesa as $mesa){
		   echo "
		   <tr>
		   <td>$mesa[dia]</td>
		   <td>$mesa[mes]</td>
		   <td>$mesa[turno]</td>
		   <td>$mesa[informacion]</td>
		   <td>$mesa[taller]</td>";
		   }		   
	  ?>
	  
	
	  </tbody>
	  .
	  </table>
  
	  </div></div>
	  </div>
	 
	  
<?php
}
?>