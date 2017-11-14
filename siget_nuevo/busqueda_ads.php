<?php
session_start();
include_once("libreria/motor.php");
include_once("libreria/equivalencias.php");

$str_b =  $_POST['ad'];
//echo $str_b;
$equivalencia=Equivalencia::buscar($str_b);

?>
<?php
if (isset($equivalencia)){
?>

<div class="panel panel-default " >
 
  <div class="panel-heading " >Equivalencias Encontradas </div> 
	<div  style="overflow: scroll;height: 350px;"> 	  
	 <table class="tabla_edicion table table-hover">
	  <thead>
			  <tr>
			<th>Dia</th>
			  <th>Mes</th>
			  <th>Turno</th>
			  <th>Informacion</th>

			  
			  </tr>
		  </thead>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($equivalencia as $mesaADS){
		   echo "
		   <tr>
		   <td>$mesaADS[dia]</td>
		   <td>$mesaADS[mes]</td>
		   <td>$mesaADS[turno]</td>
		   <td>$mesaADS[informacion]</td>";


 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
			 echo '<td><button class="btn btn-primary btn-xs" onclick="editar(' . $mesaADS['id'] . ')" >Editar</button></td>';
		 echo '<td><button class="btn btn-primary btn-xs" onclick="borrar(' . $mesaADS['id'] . ')" >Borrar</button></td>';
         
		  echo " </tr> ";
	
		}
	    }
	  ?>
	 
	  </tbody>
	  
	  </table>
  
	  </div></div>
	  </div>
	 
	  
<?php
}
?>