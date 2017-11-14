<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/mesaPrevia.php");

$consulta_por =  $_REQUEST['opcion'];
$str_b = $_REQUEST['busca'];
//echo $str_b;

if ($consulta_por == 'nada') {
	$mesa=mesaPrevia::mostrar_todos();
} elseif ($consulta_por == 'mate') {
	$mesa=mesaPrevia::buscarmate($str_b);
} elseif ($consulta_por == 'profe') {
	$mesa=mesaPrevia::buscarprofe($str_b);
} elseif ($consulta_por == 'anio') {
	$mesa=mesaPrevia::buscaranio($str_b);
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
 <a href="previas.php"><img src="images/atras.png"></a>
  <div class="panel-heading " >Mesas Previas Encontradas</div> 
	<div  style="overflow: scroll;height: 850px;"> 	  
	<header>
			<div class="alert alert-info">
			<h2>Mesas Previas</h2>
			</div>
		</header>
	 <table class="table">
				<tr>
					
					<th>Materia</th>
					<th>Curso</th>
					<th>Docente</th>
					<th>Mes</th>
					<th>Dia</th>
					<th>Hora</th>
				</tr>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($mesa as $mesa){
		   echo "
		   <tr>
		   <td>$mesa[materia]</td>
		   <td>$mesa[curso]</td>
		   <td>$mesa[docente]</td>
		   <td>$mesa[mes]</td>
		   <td>$mesa[dia]</td>
		   <td>$mesa[hora]</td>";
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