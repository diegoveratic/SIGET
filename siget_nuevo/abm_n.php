<?php
include_once("libreria/motor.php");
include_once("libreria/notas.php");

$datos = new Notas();
$nota = new Notas();

include_once("menu_bs.php");

$operacion = '';

$nombre = '';
$apellido = '';
$curso = '';
$materia = '';
$nota1 = '';
$trimestre = '';




if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_est'])){
	    echo '1-alta';
		$nota->nombre=$_POST['txtNombre'];
		$nota->apellido=$_POST['txtApellido'];
		$nota->curso=$_POST['txtCurso'];
		$nota->materia=$_POST['txtMateria'];
		$nota->nota1=$_POST['txtNota'];
		$nota->trimestre=$_POST['txtTrimestre'];
		$nota->guardar();
	}
	if ($operacion == 'actualizar' && isset($_GET['id_not'])){
	    //echo '2-actualizar';
		$nota->nombre=$_POST['txtNombre'];
		$nota->apellido=$_POST['txtApellido'];
		$nota->curso=$_POST['txtCurso'];
		$nota->materia=$_POST['txtMateria'];
		$nota->nota1=$_POST['txtNota'];
		$nota->trimestre=$_POST['txtTrimestre'];
		$nota->actualizar($_GET['id_not']);
		header("Location: ".$_SERVER['PHP_SELF']);
	}
	if ($operacion == 'borrar' && isset($_GET['id_not'])){
	    //echo '3-eliminar';
		$nota->borrar($_GET['id_not']);
	}
    if ($operacion == 'edicion' && isset($_GET['id_usuario'])) {
        //echo '3-edicion';
        
        $id_usuario = $_GET['id_usuario'];

        $datos=notas::traer_datos($id);

        $nombre = $datos['nombre'];
        $apellido = $datos['apellido'];
        $curso = $datos['curso'];
        $materia = $datos['materia'];
        $nota = $datos['nota1'];
        $trimestre = $datos['trimestre'];
    }
   
}
?>
 
<script src="bootstrap/js/funciones_n.js"></script>
 
<div class="container-fluid">
   <nav class="navbar navbar-default " role="navigation" >
     <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
	  <span style="padding-right: 20px;font-weight: bold;">Notas</span>
	 <?php 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='profesor'){
		 echo '<button type="button" class="btn btn-primary  btn-sm"   onclick="cargar(\'#capa_d\',\'alta_n.php\')">Alta</button>';
	    }
	  ?>
      </ul>      
      
      
	  
	  
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
        <input type="text"  id="txt_n" placeholder="Buscar" style="position: absolute;right: 100px;" >
		<button type="button" id="btn_n" class="btn btn-primary btn-sm" style="position: absolute;right: 20px;" onclick="cargar('#capa_L','busqueda_n.php')">Buscar</button>
      </ul>
	 
	   
     
	 </div> 
	 
   </nav>
 </div>


 
 
<div class="row">
 
  <div class="col-sm-3">
  <div id="capa_d">
  
  </div>
  </div>
  
  <div class="col-sm-9">
  <div id="capa_L">	
  
	    </div>
</div>



</div>
</div>
</body>

</html>