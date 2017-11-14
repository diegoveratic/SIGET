<?php
include("libreria/motor.php");
include_once("libreria/equivalencias.php");

$equivalencia = new Equivalencia();
$dia="";
$mes="";
$turno="";
$informacion="";


if (!empty($_POST)) {

    $operacion = isset($_POST['operacion']) ? $_POST['operacion'] : 'actualizar' ;
	//echo $operacion;
	if ($operacion == 'edicion'){
	  
	  
	  $id=$_POST['id_mesaADS'];
	  
	  $A=Equivalencia::traer_datos($id);
	  
	    $dia=$A['dia'];
		$mes=$A['mes'];
		$turno=$A['turno'];
		$informacion=$A['informacion'];

		
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=actualizar&id_mesaADS='. $id;
		$btn_txt='Actualizar';
		$leyenda='Modificar datos ';
		
	}
	
	if ($operacion == 'baja'){
	  
	  
	  $id=$_POST['id_mesaADS'];
	  
	  $A=Equivalencia::traer_datos($id);
	  
	    $dia=$A['dia'];
		$mes=$A['mes'];
		$turno=$A['turno'];
		$informacion=$A['informacion'];

		
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=borrar&id_mesaADS='. $id;
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
				<input id="id_mesaADS" name="id_mesaADS" type="text" class="form-control" disabled value="<?php echo $id; ?>"/>
				<?php
			}
		}	
        ?> 
				 	  	 <div class="row">		
		<div class="col-xs-12">
			 <div  class="form-group">   
				 <label>Dia</label>
				   <select class="form-control" name="txtDia" >
				      <option><?php echo $dia; ?></option>
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
				      <option><?php echo $mes; ?></option>
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
				      <option><?php echo $turno; ?></option>
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
					   placeholder="Introduzca la informacion del encuentro" value="<?php echo $informacion; ?>"/>
			  </div> 
		</div> 
	  </div>
  
  <button method="post" type="submit" class="btn btn-default" ><?php echo $btn_txt;?></button>
   
  </form>
  </div>
  </div>
  

</div>
</div>