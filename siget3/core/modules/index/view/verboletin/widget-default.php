<?php   
$blocks = BlockData::getAllByTeamId($_GET["team_id"]);
$alumn = AlumnData::getById($_GET["id"]);
// $materias = MateriaData::getAllByCursoId($_GET["id_cursomat"]);
?>
<div class="row">
  <div class="col-md-12">
    <h1>Boletin de <small><?php echo $alumn->name;?> <?php echo $alumn->lastname;?></small></h1>
    <?php if(count($blocks)>0):?>
      <a href="./report/califications-word.php?team_id=<?php echo $_GET["team_id"]; ?>" class="btn btn-primary"><i class="fa fa-download"></i> Descargar</a>
    <?php endif; ?>
    <br><br>
    <?php
    // $cont=MateriaCursoData::getAllByCursoId("id_cursomat");
    // echo $materiacurso->id_mat;
      ?>

      <table class="table table-bordered table-hover">
      <thead>
      <th>Materia</th>
      <?php foreach($blocks as $block):?>
        <th><?php echo '1ºTrimestre'; ?></th>
      <?php endforeach; ?>

      </thead>
      <?php
      $materias=MateriaCursoData::getAllByCursoId($_GET["id_cursomat"]);
      $inicio = $materias[0]->id_mat;
      $cantidad = count($materias);
      $maximo = $cantidad + $inicio;
      for ($ma=$inicio; $ma < $maximo ; $ma++) { 
        
             $materia = MateriaData::getById("$ma");

        ?>
        <tr>
        <td><?php echo $materia->nombre_mat; ?></td> 
        <td><?php foreach ($blocks as $block) {
            $val=CalificationData::getByBA($block->id, $alumn->id);
        };
        echo $val->val;
        ?>
        </td>
      <?php /* foreach($blocks as $block):
      $val = CalificationData::getByBA($block->id, $mate->id); */
      ?>
        <td><?php /* if($val!=null ){ echo $val->val; }  */ ?></td>
      <?php  } //endforeach; ?> 

        </tr>
        <?php

      //}
      echo "</table>";

    //}else{
    //  echo "<p class='alert alert-danger'>No hay Cursos</p>";
    //}


    ?>


  </div>
</div>