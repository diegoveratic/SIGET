<?php
include("libreria/motor.php");
include_once("libreria/equivalencias.php");

$ads = new Equivalencia();
$mes="";
$dia="";
$turno="";
$informacion="";



if (!empty($_POST)) {
    
    //$operacion = $_GET['operacion']  ;
	$operacion = isset($_GET['operacion']) ? $_GET['operacion'] : 'alta' ;
	
	//echo "*".$operacion."*";
	
	if ($operacion == 'alta' && !isset($_GET['id_mesaADS'])){
	    //echo '1-alta';
		$mesa->dia=$_POST['txtDia'];
		$mesa->mes=$_POST['txtMes'];
		$mesa->turno=$_POST['txtTurno'];
		$mesa->informacion=$_POST['txtInformacion'];
		$mesa->guardar();
	}
}
?>

 
<div class="container">
  
<div class="row" >
 
  <div class="col-sm-3" >
  <div id="capa_d">
   
  <form  role="form" method="POST" action="">
  <legend>Agregar Fecha de equivalencias</legend>
     
	  
	  	 	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Dia</label>
				   <select class="form-control" name="txtDia" >
				      <option>1</option>
					  <option>2</option>
					  <option>3</option>
					  <option>4</option>
					  <option>5</option>
					  <option>6</option>
					  <option>7</option>
					  <option>8</option>
					  <option>9</option>
					  <option>10</option>
					  <option>11</option>
					  <option>12</option>
					  <option>13</option>
					  <option>14</option>
					  <option>15</option>
					  <option>16</option>
					  <option>17</option>
					  <option>18</option>
					  <option>19</option>
					  <option>20</option>
					  <option>21</option>
					  <option>22</option>
					  <option>23</option>
					  <option>24</option>
					  <option>25</option>
					  <option>26</option>
					  <option>27</option>
					  <option>28</option>
					  <option>29</option>
					  <option>30</option>
					  <option>31</option>
				   </select>
			 </div>   
			</div>  
	 </div>
	  
	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Mes</label>
				   <select class="form-control" name="txtMes" >
				      <option>Enero</option>
					  <option>Febrero</option>
					  <option>Marzo</option>
					  <option>Abril</option>
					  <option>Mayo</option>
					  <option>Junio</option>
					  <option>Julio</option>
					  <option>Agosto</option>
					  <option>Septiembre</option>
					  <option>Octubre</option>
					  <option>Noviembre</option>
					  <option>Diciembre</option>
				   </select>
			 </div>   
			</div>  
	 </div>
	 
	 	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Turno</label>
				   <select class="form-control" name="txtTurno" >
				      <option>Mañana</option>
					  <option>Tarde</option>
					
				   </select>
			 </div>   
			</div>  
	 </div>

	  <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Informacion</label>
				<input type="text"  size="20" name="txtInformacion" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduzca la informacion del encuentro" />
			  </div> 
		</div> 
	  </div>
		 

  
  <button method="post" type="submit" class="btn btn-default" >Guardar</button>
   
  </form>
  </div>
  </div>
  

</div>
</div>
