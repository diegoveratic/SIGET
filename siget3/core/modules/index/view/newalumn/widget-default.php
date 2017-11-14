
<div class="row">
	<div class="col-md-12">
	<h1>Nuevo Alumno</h1>
	<br>
		<form class="form-horizontal" method="post" id="addcategory" action="index.php?view=addalumn" role="form">


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre*</label>
    <div class="col-md-6">
      <input type="text" name="name" required class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Apellidos*</label>
    <div class="col-md-6">
      <input type="text" name="lastname" required class="form-control" id="name" placeholder="Apellidos">
    </div>
  </div>
<?php
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
}
if($u->is_admin){
  $mats=null;
  $mats = TeamData::getById($_GET["team_id"]);
  $mat = $mats->id_cursomat;
	echo'
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Domicilio*</label>
    <div class="col-md-6">
      <input type="text" name="address"  class="form-control" id="name" placeholder="Domicilio" >
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Email*</label>
    <div class="col-md-6">
      <input type="text" name="email"  class="form-control" id="name" placeholder="Email">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Telefono*</label>
    <div class="col-md-6">
      <input type="text" name="phone"  class="form-control" id="name" placeholder="Telefono">
    </div>
  </div>

    <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Sexo*</label>
    <div class="col-md-6">
      <select name="sexo"  class="form-control" id="name">
      <option>Masculino</option>
      <option>Femenino</option>
      </select>
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">D.N.I.*</label>
    <div class="col-md-6">
      <input type="text" name="dni"  class="form-control" id="name" placeholder="D.N.I.">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Fecha de Nacimiento*</label>
    <div class="col-md-6">
      <input type="text" name="nacimientofecha"  class="form-control" id="name" placeholder="Fecha de Nacimiento">
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Lugar de Nacimiento*</label>
    <div class="col-md-6">
      <input type="text" name="nacimientolugar"  class="form-control" id="name" placeholder="Lugar de Nacimiento">
    </div>
  </div>

   <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Codigo Postal*</label>
    <div class="col-md-6">
      <input  name="cp"  class="form-control" id="name" placeholder="Codigo Postal">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">nº Legajo*</label>
    <div class="col-md-6">
      <input type="text" name="legajo"  class="form-control" id="name" placeholder="nº Legajo">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Edad*</label>
    <div class="col-md-6">
      <input type="text" name="edad"  class="form-control" id="name" placeholder="Edad">
    </div>
  </div>

 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nacionalidad*</label>
    <div class="col-md-6">
      <input type="text" name="nacionalidad"  class="form-control" id="name" placeholder="Nacionalidad">
    </div>
  </div>



<h2>Contacto Padre-Madre-Tutor</h2>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre completo*</label>
    <div class="col-md-6">
      <input type="text" name="c1_fullname" class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Domicilio*</label>
    <div class="col-md-6">
      <input type="text" name="c1_address"  class="form-control" id="name" placeholder="Domicilio">
    </div>
  </div>


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Telefono*</label>
    <div class="col-md-6">
      <input type="text" name="c1_phone"  class="form-control" id="name" placeholder="Telefono">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nota</label>
    <div class="col-md-6">
      <textarea name="c1_note"  class="form-control" placeholder="Nota"></textarea>
    </div>
  </div>
';
}
?>


  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="team_id" value="<?php echo $_GET["team_id"];?>">
    <input type="hidden" name="id_cursomat" value="<?php echo $mat ?>">
      <button type="submit" class="btn btn-primary">Agregar Alumno</button>
    </div>
  </div>
</form>
	</div>
</div>