<?php
include("libreria/motor.php");
include_once("libreria/notas.php");

$nota = new Notas();
$nombre="";
$apellido="";
$curso="";
$materia="";
$nota1="";
$trimestre="";


if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_not'])){
	    //echo '1-alta';
		$nota->nombre=$_POST['txtNombre'];
		$nota->apellido=$_POST['txtApellido'];
		$nota->curso=$_POST['txtCurso'];
		$nota->materia=$_POST['txtMateria'];
		$nota->nota1=$_POST['txtNota'];
		$nota->trimestre=$_POST['txtTrimestre'];
		$nota->guardar();
	}
}
?>

 
<div class="container">
  
<div class="row" >
 
  <div class="col-sm-3" >
  <div id="capa_d">
   
  <form  role="form" method="POST" action="">
  <legend>Agregar Notas</legend>
     
     <div class="row">  	   
		   <div class="col-xs-12">
			 <div class="form-group">
			   <label for="ejemplo_apellido">Nombre</label>
			   <input type="text"  size="20" name="txtNombre" class="form-control" id="ejemplo_nombre"
					   placeholder="Introduce el nombre" />
			 </div>
		 </div>		   
	  </div>
	  
	 <div class="row">
		   <div class="col-xs-12">
			 <div class="form-group">
			  <label for="ejemplo_nombre">Apellido</label>
			  <input type="text"  size="20" name="txtApellido" class="form-control" id="ejemplo_Apellido"
					   placeholder="Introduce el Apellido" />
			 </div> 
		   </div>
	  </div>
	  	 
		 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Curso</label>
				   <select class="form-control" name="txtCurso" >
				      <option>7mo 3era</option>
					  <option>7mo 2da</option>
					  <option>7mo 1era</option>
				   </select>
			 </div>   
			</div>  
	 </div>

	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Materias</label>
				   <select class="form-control" name="txtMateria" >
				      <option>Diseño Web</option>
					  <option>Seguridad Informatica</option>
					  <option>Analisis Matematico</option>
				   </select>
			 </div>   
			</div>  
	 </div>
	 	 
	  
	      <div class="row">  	   
		   <div class="col-xs-12">
			 <div class="form-group">
			   <label for="ejemplo_apellido">Nota</label>
			   <input type="text"  size="20" name="txtNota" class="form-control" id="ejemplo_nombre"
					   placeholder="Introduce la nota" />
			 </div>
		 </div>		   
	  </div>
	  <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Trimestre</label>
				   <select class="form-control" name="txtTrimestre" >
				      <option>Primero</option>
					  <option>Segundo</option>
					  <option>Tercero</option>
				   </select>
			 </div>   
			</div>  
	 </div>

  
  <button method="post" type="submit" class="btn btn-default" >Guardar</button>
   
  </form>
  </div>
  </div>
  

</div>
</div>