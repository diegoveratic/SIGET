<?php
include("libreria/motor.php");
include_once("libreria/mesaRegular.php");

$mesa = new mesaRegular();
$materia="";
$curso="";
$docente="";
$mes="";
$dia="";
$hora="";


if (!empty($_POST)) {

    $operacion = isset($_POST['operacion']) ? $_POST['operacion'] : 'actualizar' ;
	//echo $operacion;
	if ($operacion == 'edicion'){
	  
	  
	  $id=$_POST['id_mesaR'];
	  
	  $A=mesaRegular::traer_datos($id);
	  
	    $materia=$A['materia'];
		$curso=$A['curso'];
		$docente=$A['docente'];
		$mes=$A['mes'];
		$dia=$A['dia'];
		$hora=$A['hora'];
		
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=actualizar&id_mesaR='. $id;
		$btn_txt='Actualizar';
		$leyenda='Modificar datos ';
		
	}
	
	if ($operacion == 'baja'){
	  
	  
	  $id=$_POST['id_mesaR'];
	  
	  $A=mesaRegular::traer_datos($id);
	  
	    $materia=$A['materia'];
		$curso=$A['curso'];
		$docente=$A['docente'];
		$mes=$A['mes'];
		$dia=$A['dia'];
		$hora=$A['hora'];
		
		
		$accion=$_SERVER['HTTP_REFERER'].'?operacion=borrar&id_mesaR='. $id;
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
				<input id="id_mesaR" name="id_mesaR" type="text" class="form-control" disabled value="<?php echo $id; ?>"/>
				<?php
			}
		}	
        ?> 
     <div class="row">  	   
		   <div class="col-xs-12">
			 <div class="form-group">
			   <label for="ejemplo_apellido">Materia</label>
			   <input type="text"  size="20" name="txtMateria" class="form-control" id="ejemplo_nombre"
					   placeholder="Introduce el nombre de la materia" value="<?php echo $materia; ?>"/>
			 </div>
		 </div>		   
	  </div>
	  
	 <div class="row">
		   <div class="col-xs-12">
			 <div class="form-group">
			  <label for="ejemplo_nombre">Curso</label>
			  <input type="text"  size="20" name="txtCurso" class="form-control" id="ejemplo_Apellido"
					   placeholder="Introduce el curso" value="<?php echo $curso; ?>"/>
			 </div> 
		   </div>
	  </div>
	  
	 
	 
	 <div class="row">		
		<div class="col-xs-12">
			  <div class="form-group">
				<label for="ejemplo_Matricula">Docente</label>
				<input type="text"  size="20" name="txtMatricula" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce el nombre y apellido" value="<?php echo $docente; ?>"/>
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
			  <div class="form-group">
				<label for="ejemplo_Matricula">Hora</label>
				<input type="text"  size="20" name="txtHora" class="form-control" id="ejemplo_Matricula"
					   placeholder="Introduce la hora" value="<?php echo $hora; ?>"/>
			  </div> 
		</div> 
	  </div>
	  

  
  <button method="post" type="submit" class="btn btn-default" ><?php echo $btn_txt;?></button>
   
  </form>
  </div>
  </div>
  

</div>
</div>