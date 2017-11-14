<?php   
$blocks = BlockData::getAllByTeamId($_GET["team_id"]);
$alumn = AlumnData::getById($_GET["id"]);
// $materias = MateriaData::getAllByCursoId($_GET["id_cursomat"]);
?>
<div class="row">
  <div class="col-md-12">
    <h1>Boletin de <small><?php echo $alumn->name;?> <?php echo $alumn->lastname;?></small></h1>
    <?php if(count($blocks)>0):?>
      <a href="./report/boletin-word.php?team_id=<?php echo $_GET["team_id"]; ?>" class="btn btn-primary"><i class="fa fa-download"></i> Descargar</a>
    <?php endif; ?>
    <br><br>
    <?php
    // $cont=MateriaCursoData::getAllByCursoId("id_cursomat");
    // echo $materiacurso->id_mat;
      ?>

      <table class="table table-bordered table-hover">
      <thead>
      <th>Materia</th>
        <th>1ºTrimestre</th>
        <th>2ºTrimestre</th>
        <th>3ºTrimestre</th>
        </tr>
   </thead>
   <thead>
        <tr>
        <?php foreach($blocks as $block):?>
        <td><?php echo $block->name; ?></td> 
        <tr></tr>
      <?php endforeach; ?>
      </tr>
      <tr>
        <?php foreach ($blocks as $block) {
            $val=CalificationData::getByBA($block->id, $alumn->id);
         ?>
        <td><?php echo $val->val; ?></td>
        <?php }; ?>

      </tr>
        </thead>
        <?php

      //}
      echo "</table>";

    //}else{
    //  echo "<p class='alert alert-danger'>No hay Cursos</p>";
    //}


    ?>


  </div>
</div>