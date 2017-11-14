<?php 
$alumn = AlumnData::getById($_GET["id"]);
?>
<div class="row">
	<div class="col-md-12">
	<h1>Editar Alumno</h1>
	<br>
		<form class="form-horizontal" method="post" id="addcategory" action="index.php?action=updatealumn" role="form">


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre*</label>
    <div class="col-md-6">
      <input type="text" name="name" value="<?php echo $alumn->name; ?>" required class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Apellidos*</label>
    <div class="col-md-6">
      <input type="text" name="lastname" value="<?php echo $alumn->lastname; ?>" required class="form-control" id="name" placeholder="Apellidos">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Domicilio*</label>
    <div class="col-md-6">
      <input type="text" name="address"  class="form-control" value="<?php echo $alumn->address; ?>" id="name" placeholder="Domicilio">
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Telefono*</label>
    <div class="col-md-6">
      <input type="text" name="phone" value="<?php echo $alumn->phone; ?>"  class="form-control" id="name" placeholder="Telefono">
    </div>
  </div>



  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Email*</label>
    <div class="col-md-6">
      <input type="text" name="email"  class="form-control" value="<?php echo $alumn->email; ?>" id="name" placeholder="Email">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Sexo*</label>
    <div class="col-md-6">

      <select class="form-control" name="sexo" id="name" value="<?php echo $alumn->sexo ;?>" >
      <?php
      $sex=$alumn->sexo ;
      if ($sex=="Masculino"){
        ?>
      <option>Masculino</option>
      <option>Femenino</option>
     <?php }else{ ?>
      <option>Femenino</option>
      <option>Masculino</option>
      <?php } ?>
      </select>
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">D.N.I.*</label>
    <div class="col-md-6">
     <input type="text" name="dni"  class="form-control" value="<?php echo $alumn->dni ;?>" id="name" placeholder="D.N.I.">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Fecha de Nacimiento*</label>
    <div class="col-md-6">
  <input type="text" name="nacimientofecha"  class="form-control" value="<?php echo $alumn->nacimientofecha ;?>" id="name" placeholder="Fecha de Nacimiento">
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Lugar de Nacimiento*</label>
    <div class="col-md-6">
     <input type="text" name="nacimientolugar"  class="form-control" value="<?php echo $alumn->nacimientolugar ;?>" id="name" placeholder="lugar de Nacimiento">
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Codigo Postal*</label>
    <div class="col-md-6">
     <input name="cp"  class="form-control" value="<?php echo $alumn->cp ;?>" id="cp" placeholder="Codigo Postal">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">nº Legajo*</label>
    <div class="col-md-6">
      <input type="text" name="legajo"  class="form-control" value="<?php echo $alumn->legajo ;?>" id="name" placeholder="nº Legajo">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Edad*</label>
    <div class="col-md-6">
      <input type="text" name="edad"  class="form-control" value="<?php echo $alumn->edad ;?>" id="name" placeholder="Edad">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nacionalidad*</label>
    <div class="col-md-6">
      <input type="text" name="nacionalidad"  class="form-control" value="<?php echo $alumn->nacionalidad ;?>" id="name" placeholder="Nacionalidad">
    </div>
  </div>



<h2>Contacto Padre-Madre-Tutor</h2>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre completo*</label>
    <div class="col-md-6">
      <input type="text" name="c1_fullname" value="<?php echo $alumn->c1_fullname; ?>" required class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Domicilio*</label>
    <div class="col-md-6">
      <input type="text" name="c1_address" value="<?php echo $alumn->c1_address; ?>"  class="form-control" id="name" placeholder="Domicilio">
    </div>
  </div>


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Telefono*</label>
    <div class="col-md-6">
      <input type="text" name="c1_phone" value="<?php echo $alumn->c1_phone; ?>"  class="form-control" id="name" placeholder="Telefono">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nota</label>
    <div class="col-md-6">
      <textarea name="c1_note"  class="form-control" placeholder="Nota"><?php echo $alumn->c1_note; ?></textarea>
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="alumn_id" value="<?php echo $_GET["id"];?>">
    <input type="hidden" name="tid" value="<?php echo $_GET["tid"];?>">
      <button type="submit" class="btn btn-primary">Actualizar Alumno</button>
    </div>
  </div>
</form>
	</div>
</div>