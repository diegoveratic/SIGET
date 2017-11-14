<?php

		$materias = MateriaCursoData::getAllByCursoId($_GET["id_cursomat"]);
		if(count($materias)>0){
			// si hay materias
			?>

			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre</th>
			<th>
			</th>
			</thead>
			<?php
			foreach($materias as $materia){
				$mat = $materia->getMateria();
				$asigna = UserMateriaCursoData::GetByUM($_GET["id"],$mat->id_mat);
				$values = array(""=>"No Asignado","1"=>"Asignado");
				?>
				<tr>
				<td style="width:250px;"><?php echo $mat->nombre_mat; ?></td>
				<td >
				<form id="form-<?php echo $mat->id_mat; ?>">
				<input type="hidden" name="user_id" value="<?php echo $_GET["id"]; ?>">
				<input type="hidden" name="id_mat" value="<?php echo $mat->id_mat; ?>">
				<select class="form-control input-sm"  name="val" id="select-<?php echo $mat->id_mat; ?>">
					<?php foreach($values as $k=>$v):?>
					<option value="<?php echo $k; ?>"  <?php if($asigna!=null && $asigna->val==$k){ echo "selected"; }?>> <?php echo $v;?> </option>
					<?php endforeach; ?>
				</select>
				</form>
				<script>
				$("#select-<?php echo $mat->id_mat; ?>").change(function(){
					$.post("./?action=addmateria",$("#form-<?php echo $mat->id_mat; ?>").serialize(), function(data){
						console.log(data);
					});
				});
				</script>
				</td>
				</tr>
				<?php

			}
echo "</table>";


		}else{
			echo "<p class='alert alert-danger'>No hay Grupos</p>";
		}


		?>