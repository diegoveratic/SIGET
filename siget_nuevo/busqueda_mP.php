<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/mesaPrevia.php");

$str_b =  $_POST['p'];
//echo $str_b;
$mesa=mesaPrevia::buscar($str_b);

?>
<?php
if (isset($mesa)){
?>

<div class="panel panel-default " >
 
  <div class="panel-heading " >Mesas Previas Encontradas</div> 
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
		  foreach($mesa as $mesa){
		   echo "
		   <tr>
		   
		   <td>$mesa[materia]</td>
		   <td>$mesa[curso]</td>
		   <td>$mesa[docente]</td>
		   <td>$mesa[mes]</td>
		   <td>$mesa[dia]</td>
		   <td>$mesa[hora]</td>";

		   if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
			 echo '<td><button class="btn btn-primary btn-xs" onclick="editar(' . $mesa['id'] . ')" >Editar</button></td>';
		 echo '<td><button class="btn btn-primary btn-xs" onclick="borrar(' . $mesa['id'] . ')" >Borrar</button></td>';
         
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