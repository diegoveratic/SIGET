<?php
$alumn =  AlumnData::getById($_GET["id"]);
$teams = AlumnTeamData::getAllByAlumnId($_GET["id"]);
$allteams = TeamData::getAllByUserId($_SESSION["user_id"]);
$found = false;
  $txs = array();
  foreach($allteams as $t){ $txs[] = $t->id; }
  $tys = array();
  foreach($teams as $t){ $tys[] = $t->team_id; }
  $tzs = array_diff($txs,$tys);
  if(empty($tzs)){ $found= false; }else { $found=true; }

  ?>
<div class="row">
	<div class="col-md-12">
		<h1><?php echo $alumn->name." ".$alumn->lastname; ?></h1>
<!-- Single button -->
<div class="btn-group">
  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    Agregar al Curso <span class="caret"></span>
  </button>



  <ul class="dropdown-menu" role="menu">
  <?php if($found):
  $txs = array();
  foreach($allteams as $t){ $txs[] = $t->id; }
  $tys = array();
  foreach($teams as $t){ $tys[] = $t->team_id; }
  $tzs = array_diff($txs,$tys);


  	foreach ($tzs as $t) {
  		$te = null;
  		foreach ($allteams as $ate) {
  			if($ate->id==$t){ $te= $ate; }
  		}
		echo "<li><a href='./?action=addalumntoteam&al_id=$alumn->id&t_id=$t'>".$te->name."</a></li>";
	}
?>
  <?php else:?>
    <li><a href="javascript:void()">No hay Cursos</a></li>
<?php endif;?>
  </ul>
</div>
<!--	<a href="index.php?view=list&team_id=<?php echo $_GET["id"]; ?>" class="btn btn-default"><i class='fa fa-area-chart'></i> Estadisticas</a> -->


<br><br>
		<?php

		if(count($teams)>0){
			// si hay usuarios
			?>
			<label>Datos del Alumno</label>
			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Domicilio</th>
			<th>Email</th>
			<th>Telefono</th>
			<th>Sexo</th>
			<th>D.N.I.</th>
			<th>Fecha de Nacimiento</th>
			<th>Lugar de Nacimiento</th>
			<th>Codigo Postal</th>
			<th>nº Legajo</th>
			<th>Edad</th>
			<th>Nacionalidad</th>
			<th>Curso</th>

			</thead>
			<?php
			foreach($teams as $al){
				$alumn = $al->getAlumn();
				$curso = $al->getTeam();

				?>
				<tr>
				<td><?php echo $alumn->name; ?></td>
				<td><?php echo $alumn->lastname; ?></td>
				<td><?php echo $alumn->address; ?></td>
				<td><?php echo $alumn->email; ?></td>
				<td><?php echo $alumn->phone; ?></td>
				<td><?php echo $alumn->sexo; ?></td>
				<td><?php echo $alumn->dni; ?></td>
				<td><?php echo $alumn->nacimientofecha; ?></td>
				<td><?php echo $alumn->nacimientolugar; ?></td>
				<td><?php echo $alumn->cp; ?></td>
				<td><?php echo $alumn->legajo; ?></td>
				<td><?php echo $alumn->edad; ?></td>
				<td><?php echo $alumn->nacionalidad; ?></td>
				<td><?php echo $curso->name; ?></td>
				</tr>

			<br><br>

			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre Completo</th>
			<th>Domicilo</th>
			<th>Telefono</th>
			<th>Nota</th>
			</thead>
			<?php
			foreach($teams as $al){
				$alumn = $al->getAlumn();
				$curso = $al->getTeam();
							?>
							<label>Datos del Padre-Madre-Tutor</label>
							<br><br>
							<?php
				?>
				<tr>
				<td><?php echo $alumn->c1_fullname; ?></td>
				<td><?php echo $alumn->c1_address; ?></td>
				<td><?php echo $alumn->c1_phone; ?></td>
				<td><?php echo $alumn->c1_note; ?></td>
				</tr>



				<?php

			}
		}

echo "</table>";

		}else{
			echo "<p class='alert alert-danger'>No hay Alumnos</p>";
		}


		?>


	</div>
</div>