<?php
include("libreria/motor.php");
include_once("libreria/estudiante.php");

$estudiante = new Estudiante();
$nombre="";
$apellido="";
$sexo="";
$matricula="";
$telefono="";
$telefono1="";
$domicilio="";
$fecha="";
$lugar="";
$localidad="";
$codigop="";


if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_est'])){
	    //echo '1-alta';
		$estudiante->nombre=$_POST['txtNombre'];
		$estudiante->apellido=$_POST['txtApellido'];
		$estudiante->sexo=$_POST['txtSexo'];
		$estudiante->matricula=$_POST['txtMatricula'];
		$estudiante->telefono=$_POST['txtTelefono'];
		$estudiante->telefono1=$_POST['txtTelefono1'];
		$estudiante->domicilio=$_POST['txtDomicilio'];
		$estudiante->fecha=$_POST['txtFecha'];
		$estudiante->lugar=$_POST['txtLugar'];
		$estudiante->localidad=$_POST['txtLocalidad'];
		$estudiante->codigop=$_POST['txtCodigoPostal'];
		$estudiante->guardar();
	}
}
?>

 
<div class="container">
  
<div class="row" >
 
  <div class="col-sm-3" >
  <div id="capa_d">
   
  <form  role="form" method="POST" action="">
  <legend>Agregar estudiante</legend>
     
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
			 <label>Sexo</label>
			    <div class="radio">
			     <label>
				  <input type="radio" name="txtSexo" id="sexo_1" value="Femenino" checked>
				  Femenino
			     </label>
			    </div>			  
			    <div class="radio">
			     <label>
				  <input type="radio" name="txtSexo" id="sexo_2" value="Masculino">
				  Masculino
			     </label>
			    </div>				 
			 </div> 
		   </div>
	  </div>
	 

	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">DNI</label>
				<input type="text"  size="20" name="txtMatricula" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce el DNI" />
			  </div> 
		</div> 
	  </div>
	  
	  	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Telefono</label>
				<input type="text"  size="20" name="txtTelefono" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce el numero de telefono" />
			  </div> 
		</div> 
	  </div>
	  
	  	  	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Celular</label>
				<input type="text"  size="20" name="txtTelefono1" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce el numero de celular" />
			  </div> 
		</div> 
	  </div>
	  
	  	  	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Domicilio</label>
				<input type="text"  size="20" name="txtDomicilio" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduzca la direccion" />
			  </div> 
		</div> 
	  </div>
	  
	  	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Fecha de nacimiento</label>
				<input type="text"  size="20" name="txtFecha" class="form-control" id="ejemplo_Matricula"
					   placeholder="dd/mm/aaaa" />
			  </div> 
		</div> 
	  </div>
	  
	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Lugar de Nacimiento</label>
				   <select class="form-control" name="txtLugar" >
				      <option>Berazategui</option>
					  <option>Quilmes</option>
					  <option>Bernal</option>
				   </select>
			 </div>   
			</div>  
	 </div>
	 
	 	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Localidad</label>
				   <select class="form-control" name="txtLocalidad" >
				      <option>Berazategui</option>
					  <option>Quilmes</option>
					  <option>Bernal</option>
				   </select>
			 </div>   
			</div>  
	 </div>
		 

	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Codigo Postal</label>
				<input type="text"  size="20" name="txtCodigoPostal" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce el codigo postal" />
			  </div> 
		</div> 
	  </div>
		 


  
  <button method="post" type="submit" class="btn btn-default" >Guardar</button>
   
  </form>
  </div>
  </div>
  

</div>
</div>
