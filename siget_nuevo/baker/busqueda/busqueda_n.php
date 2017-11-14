<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/notas.php");

$str_b =  $_POST['n'];
//echo $str_b;
$not=notas::buscar($str_b);

?>
<?php
if (isset($not)){
?>

<div class="panel panel-default " >
 
  <div class="panel-heading " >Datos Encontrados</div> 
	<div  style="overflow: scroll;height: 350px;"> 	  
	 <table class="tabla_edicion table table-hover">
	  <thead>
			  <tr>
			  
              <th>Nombre</th>
			  <th>Apellido</th>
			  <th>Curso</th>
			  <th>Materia</th>
			  <th>Nota</th>
			  <th>Trimestre</th>
			  
			
			  
			  </tr>
		  </thead>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($not as $nota){
		   echo "
		   <tr>
		   
		   <td>$nota[nombre]</td>
		   <td>$nota[apellido]</td>
		   <td>$nota[curso]</td>
		   <td>$nota[materia]</td>
		   <td>$nota[nota1]</td>
		   <td>$nota[trimestre]</td>"
		   ;
	  

	   if (isset($_SESSION['username']) && $_SESSION['rol']=='profesor'){
			 echo '<td><button class="btn btn-primary btn-xs" onclick="editar(' . $nota['id'] . ')" >Editar</button></td>';
		 echo '<td><button class="btn btn-primary btn-xs" onclick="borrar(' . $nota['id'] . ')" >Borrar</button></td>';
         
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