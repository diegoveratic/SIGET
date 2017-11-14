<?php
session_start();

include_once("libreria/motor.php");
include_once("libreria/estudiante.php");

$str_b =  $_POST['b'];
//echo $str_b;
$est=Estudiante::buscar($str_b);

?>
<?php
if (isset($est)){
?>

<div class="panel panel-default " >
 
  <div class="panel-heading " >Estudiantes Encontrados</div> 
	<div  style="overflow: scroll;height: 350px;"> 	  
	 <table class="tabla_edicion table table-hover">
	  <thead>
			  <tr>
			  <th id="proceso">Id</th>
              <th>Nombre</th>
			  <th>Apellido</th>
			  <th>Sexo</th>
			  <th>D.N.I.</th>
			  <th>Telefono</th>
			  <th>Celular</th>
			  <th>Domicilio</th>
			  <th>Fecha de Nacimiento</th>
			  <th>Lugar</th>
			  <th>Localidad</th>
			  <th>Codigo Postal</th>
			  <th>Legajo nº</th>
			  <th>Edad</th>
			  <th>Nacionalidad</th>
			  
			  </tr>
		  </thead>
	   
	  <tbody>
	 
	  
	  <?php
		  foreach($est as $estudiantes){
		   echo "
		   <tr>
		   <td>$estudiantes[id]</td>
		   <td>$estudiantes[nombre]</td>
		   <td>$estudiantes[apellido]</td>
		   <td>$estudiantes[sexo]</td>
		   <td>$estudiantes[matricula]</td>
		   <td>$estudiantes[telefono]</td>
		   <td>$estudiantes[telefono1]</td>
		   <td>$estudiantes[domicilio]</td>
		   <td>$estudiantes[fecha]</td>
		   <td>$estudiantes[lugar]</td>
		   <td>$estudiantes[localidad]</td>
		   <td>$estudiantes[codigop]</td>
		   <td>$estudiantes[legajo]</td>
		   <td>$estudiantes[edad]</td>
		   <td>$estudiantes[nacionalidad]</td>";


 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
			 echo '<td><button class="btn btn-primary btn-xs" onclick="editar(' . $estudiantes['id'] . ')" >Editar</button></td>';
		 echo '<td><button class="btn btn-primary btn-xs" onclick="borrar(' . $estudiantes['id'] . ')" >Borrar</button></td>';
         
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