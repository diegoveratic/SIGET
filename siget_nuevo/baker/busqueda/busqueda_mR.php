<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/mesaRegular.php");

$str_b =  $_POST['mR'];
//echo $str_b;
$mesa=mesaRegular::buscar($str_b);

?>
<?php
if (isset($mesa)){
?>

<div class="panel panel-default " >
 
  <div class="panel-heading " >Mesas Regulares Encontradas</div> 
	<div  style="overflow: scroll;height: 350px;"> 	  
	 <table class="tabla_edicion table table-hover">
	  <thead>
			  <tr>
              <th>Materia</th>
			  <th>Curso</th>
			  <th>Docente</th>
			  <th>Mes</th>
			  <th>Dia</th>
			  <th>Hora</th>
			  
			  </tr>
		  </thead>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($mesa as $mesaR){
		   echo "
		   <tr>
		   <td>$mesaR[materia]</td>
		   <td>$mesaR[curso]</td>
		   <td>$mesaR[docente]</td>
		   <td>$mesaR[mes]</td>
		   <td>$mesaR[dia]</td>
		   <td>$mesaR[hora]</td>";

		    if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
			 echo '<td><button class="btn btn-primary btn-xs" onclick="editar(' . $mesaR['id'] . ')" >Editar</button></td>';
		 echo '<td><button class="btn btn-primary btn-xs" onclick="borrar(' . $mesaR['id'] . ')" >Borrar</button></td>';
         
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