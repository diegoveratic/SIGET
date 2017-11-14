<?php

include("menu_bs.php");
echo '
<div class="container-fluid" >
	<div class="row">
	 
	  <div class="col-sm-3">
	  <div id="capa_d">
	  <H3>SIGET</H3>
	  <H4>Informacion General</H4>
	  <ul class="nav nav-pills nav-stacked">
	    <li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/sigetinfo.html\')">SIGET</span></a></li>
        <li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/asistenciasinfo.html\')">Asistencia</span></a></li>
        <li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/mesasinfo.html\')">Mesas de Examen</span></a></li>
        <li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/notasinfo.html\')">Notas</a></span></li>
		<li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/historialinfo.html\')">Historial de Alumnos</a></span></li>
		<li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/preceptorinfo.html\')">Preceptor</a></span></li>
		<li><a href="#"><span onclick="cargar(\'#capa_L\',\'txts/profesorinfo.html\')">Profesor</a></span></li>



      </ul>
	  </div>
	  </div>

	</div>
 </div>
';
?>

