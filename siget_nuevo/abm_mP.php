<?php
include_once("libreria/motor.php");
include_once("libreria/mesaPrevia.php");

$datos = new mesaPrevia();
$mesa = new mesaPrevia();

include_once("menu_bs.php");

$operacion = '';

$materia = '';
$curso = '';
$docente = '';
$mes = '';
$dia="";
$hora="";



if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_mesaP'])){
	    echo '1-alta';
		$mesa->materia=$_POST['txtMateria'];
		$mesa->curso=$_POST['txtCurso'];
		$mesa->docente=$_POST['txtDocente'];
		$mesa->mes=$_POST['txtMes'];
		$mesa->dia=$_POST['txtDia'];
		$mesa->hora=$_POST['txtHora'];
		$mesa->guardar();
	}
	if ($operacion == 'actualizar' && isset($_GET['id_mesaP'])){
	    //echo '2-actualizar';
		$mesa->materia=$_POST['txtMateria'];
		$mesa->curso=$_POST['txtCurso'];
		$mesa->docente=$_POST['txtDocente'];
		$mesa->mes=$_POST['txtMes'];
		$mesa->dia=$_POST['txtDia'];
		$mesa->hora=$_POST['txtHora'];
		$mesa->actualizar($_GET['id_mesaP']);
		header("Location: ".$_SERVER['PHP_SELF']);
	}
	if ($operacion == 'borrar' && isset($_GET['id_mesaP'])){
	    //echo '3-eliminar';
		$mesa->borrar($_GET['id_mesaP']);
	}
    if ($operacion == 'edicion' && isset($_GET['id_usuario'])) {
        //echo '3-edicion';
        
        $id_usuario = $_GET['id_usuario'];

        $datos=mesaRegular::traer_datos($id_usuario);

        $materia = $datos['materia'];
        $curso = $datos['curso'];
        $docente = $datos['docente'];
        $mes = $datos['mes'];
        $dia = $datos['dia'];
		$hora = $datos['hora'];
    }
   
}
?>
 
<script src="bootstrap/js/funciones_mP.js"></script>
 
<div class="container-fluid">
   <nav class="navbar navbar-default " role="navigation" >
     <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
	  <span style="padding-right: 20px;font-weight: bold;">Mesas Previas</span>

	  <?php 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
		 echo '<button type="button" class="btn btn-primary  btn-sm"   onclick="cargar(\'#capa_d\',\'alta_mP.php\')">Alta</button>';
	    }
	  ?>
      </ul>      
      
	  
	  
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
        <input type="text"  id="txt_p" placeholder="Buscar" style="position: absolute;right: 100px;" >
		<button type="button" id="btn_p" class="btn btn-primary btn-sm" onclick="cargar(\'#capa_L\',\'busqueda_mP.php\')" style="position: absolute;right: 20px;">Buscar</button>
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