<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/> 
<div class="row">
	<div class="col-md-12">
	<h1>Nuevo Trimestre</h1>
	<br>
		<form class="form-horizontal" method="post" id="addcategory" action="index.php?action=addblock" role="form">

    <div class="row">   
    <div class="col-xs-3">
       <div  class="form-group">   
         <label>Materia</label>


         <?php
         $conexion=mysql_connect("localhost","root","") or die("Error al conectar");
         mysql_select_db("xoolar",$conexion)or die ("error al conectarse");
         $result =mysql_query("SELECT nombre_mat FROM materia") or die ("Error en la consulta");
         ?>

           <select class="form-control" name="name" >

           <?php
           while ($row = mysql_fetch_array($result))
           {
            ?>

            <option><?php echo $row['nombre_mat']; ?></option>
          <?php
          }
          ?>


           </select>
       </div>   
      </div>  
   </div>




    <div class="row">   
    <div class="col-xs-3">
       <div  class="form-group">   
         <label>Trimestre nº</label>
           <select class="form-control" name="trimestre" >
            <option>1ºTrimestre</option>
            <option>2ºTrimestre</option>
            <option>3ºTrimestre</option>
           </select>
       </div>   
      </div>  
   </div>



  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="team_id" value="<?php echo $_GET["team_id"];?>">
      <button type="submit" class="btn btn-primary">Agregar Trimestre</button>
    </div>
  </div>
</form>
	</div>
</div>