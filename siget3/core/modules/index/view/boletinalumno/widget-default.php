<?php
$team =  TeamData::getById($_GET["id"]);
$alumns = AlumnTeamData::getAllByTeamId($_GET["id"]);
?> 
<div class="row">
	<div class="col-md-12">
		<h1>Boletin de alumnos<small><?php echo $team->name;?></small></h1>

<br><br>
		<?php

		if(count($alumns)>0){
			// si hay usuarios
			?>

			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre</th>
			<th></th>
			</thead>
			<?php
			foreach($alumns as $al){
				$alumn = $al->getAlumn();
				?>
				<tr>
				<td><?php echo $alumn->name." ".$alumn->lastname; ?></td>
				<td style="width:100px;"><a href="index.php?view=verboletin&id=<?php echo $alumn->id;?>&team_id=<?php echo $team->id;?>&id_cursomat=<?php echo $alumn->id_cursomat;?>" class="btn btn-primary btn-xs">Ver</a></td>
				</tr>
				<?php

			}

echo "</table>";

		}else{
			echo "<p class='alert alert-danger'>No hay Alumnos</p>";
		}


		?>


	</div>
</div>