<?php
$user = UserData::getById($_GET["id"]);
?>
<div class="row">
	<div class="col-md-12">
	<a href="index.php?view=team&id=<?php echo $_GET["team_id"]; ?>" class="btn pull-right btn-sm btn-danger"><i class='fa fa-arrow-left'></i> Regresar</a>
		<h1>Asignar materias de: <small><?php echo "$user->name"." "."$user->lastname";?></small></h1>
<form class="form-horizontal" id="loadlist" role="form">
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Seleccionar año:</label>
    <div class="col-lg-7">
    <select class="form-control" name="id_cursomat" required>
    <option value="">-- SELECCIONE --</option>
    	<?php 
    		$teams = TeamData::getAll();
    		foreach($teams as $team):?>
    		<option value="<?php echo $team->id_cursomat; ?>"><?php echo $team->name;echo "   "; ?></option>
    	<?php endforeach; ?>
    </select>
    </div>
    <div class="col-lg-offset-3">
    <!-- en el txt -->
    	<input type="hidden" name="id" value="<?php echo $_GET["id"];?>">
     	<button type="submit" class="btn btn-primary">Seleccionar</button>
    </div>

  </div>
</form>

<div id="data">
	<p class="alert alert-warning">No hay datos, por favor selecciona un año.</p>
</div>

	</div>
</div>

<script>
	$("#loadlist").submit(function(e){
		e.preventDefault();
		var d = $("#loadlist").serialize();
		$.get("./?action=loadmaterias",d,function(data){
			console.log(data);
			$("#data").html(data);

		});
	});
</script>