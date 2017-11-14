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

    $operacion = isset($_POST['operacion']) ? $_POST['operacion'] : 'actualizar' ;
	//echo $operacion;
	if ($operacion == 'edicion'){
	  
	  
	  $id=$_POST['id_not'];
	  
	  $A=Notas::traer_datos($id);
	  
	    $nombre=$A['nombre'];
		$apellido=$A['apellido'];
		$curso=$A['curso'];
		$materia=$A['materia'];
		$nota1=$A['nota1'];
		$trimestre=$A['trimestre'];
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=actualizar&id_not='. $id;
		$btn_txt='Actualizar';
		$leyenda='Modificar datos ';
		
	}
	
	if ($operacion == 'baja'){
	  
	  
	  $id=$_POST['id_not'];
	  
	  $A=Notas::traer_datos($id);
	  
	    $nombre=$A['nombre'];
		$apellido=$A['apellido'];
		$curso=$A['curso'];
		$materia=$A['materia'];
		$nota1=$A['nota1'];
		$trimestre=$A['trimestre'];
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=borrar&id_not='. $id;
		$btn_txt='Borrar';
		$leyenda='Eliminar';
	}
	
	
	
    
}

?>

 
<div class="container">
  
<div class="row" >
 
  <div class="col-sm-3" style="background-color: #00FFFF;">
  <div id="capa_d">
   
  <form  role="form" method="POST" action="<?php echo $accion;?>">
  <legend><?php echo $leyenda;?></legend>
     <?php 
	 if (isset($operacion)){
			if ($operacion == 'edicion' || $operacion == 'baja' ) {
			    /*echo $nombre;*/
				?>
				<label for="id_usuario" >ID:</label>
				<input id="id_not" name="id_not" type="text" class="form-control" disabled value="<?php echo $id; ?>"/>
				<?php
			}
		}	
        ?> 
     <div class="row">  	   
		   <div class="col-xs-12">
			 <div class="form-group">
			   <label for="ejemplo_apellido">Nombre</label>
			   <input type="text"  size="20" name="txtNombre" class="form-control" id="ejemplo_nombre"
					   placeholder="Introduce el nombre" value="<?php echo $nombre; ?>"/>
			 </div>
		 </div>		   
	  </div>
	  
	 <div class="row">
		   <div class="col-xs-12">
			 <div class="form-group">
			  <label for="ejemplo_nombre">Apellido</label>
			  <input type="text"  size="20" name="txtApellido" class="form-control" id="ejemplo_Apellido"
					   placeholder="Introduce el Apellido" value="<?php echo $apellido; ?>"/>
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


  
  <button method="post" type="submit" class="btn btn-default" ><?php echo $btn_txt;?></button>
   
  </form>
  </div>
  </div>
  

</div>
</div>