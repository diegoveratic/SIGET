<?php
include_once("libreria/motor.php");
include_once("libreria/equivalencias.php");

$datos = new Equivalencia();
$ads = new Equivalencia();

include_once("menu_bs.php");

$operacion = '';

$mes="";
$dia="";
$turno="";
$informacion="";




if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_mesaADS'])){
	    echo '1-alta';
		$ads->dia=$_POST['txtDia'];
		$ads->mes=$_POST['txtMes'];
		$ads->turno=$_POST['txtTurno'];
		$ads->informacion=$_POST['txtInformacion'];
		
		$ads->guardar();
	}
	if ($operacion == 'actualizar' && isset($_GET['id_mesaADS'])){
	    //echo '2-actualizar';
		$ads->dia=$_POST['txtDia'];
		$ads->mes=$_POST['txtMes'];
		$ads->turno=$_POST['txtTurno'];
		$ads->informacion=$_POST['txtInformacion'];
		$ads->actualizar($_GET['id_mesaADS']);
		header("Location: ".$_SERVER['PHP_SELF']);
	}
	if ($operacion == 'borrar' && isset($_GET['id_mesaADS'])){
	    //echo '3-eliminar';
		$ads->borrar($_GET['id_mesaADS']);
	}
    if ($operacion == 'edicion' && isset($_GET['id_usuario'])) {
        //echo '3-edicion';
        
        $id_usuario = $_GET['id_usuario'];

        $datos=Equivalencia::traer_datos($id_usuario);

        $dia = $datos['dia'];
		$mes = $datos['mes'];
        $turno = $datos['turno'];
		$informacion = $datos['informacion'];
    }
   
}
?>
 
<script src="bootstrap/js/funciones_ads.js"></script>
 
<div class="container-fluid">
   <nav class="navbar navbar-default " role="navigation" >
     <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
	  <span style="padding-right: 20px;font-weight: bold;">Equivalencias</span>

	  <?php 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='preceptor'){
		 echo '<button type="button" class="btn btn-primary  btn-sm"   onclick="cargar(\'#capa_d\',\'alta_ads.php\')">Alta</button>';
	    }
	  ?>
      </ul>      
      
      
	  
	  
      <ul class="nav navbar-nav" style="padding-top: 10px;padding-bottom: 0px;">
        <input type="text"  id="txt_ad" placeholder="Buscar" style="position: absolute;right: 100px;" >
		<button type="button" id="btn_ad" class="btn btn-primary btn-sm" onclick="cargar(\'#capa_L\',\'busqueda_ads.php\')" style="position: absolute;right: 20px;">Buscar</button>
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