<?php
class MateriaCursoData {
	public static $tablename = "materia_curso";


	public function MateriaCursoData(){
		$this->id_mat = "";
		$this->nombre_mat = "";
		$this->email = "";
		$this->password = "";
		$this->created_at = "NOW()";
	}

	public function getMateria(){ return MateriaData::getById($this->id_mat); }
	public function getTeam(){ return TeamData::getById($this->team_id); }

	/*
	public function add(){
		$sql = "insert into ".self::$tablename." (alumn_id,team_id) ";
		$sql .= "value (\"$this->alumn_id\",$this->team_id)";
		return Executor::doit($sql);
	}

	public static function delById($id){
		$sql = "delete from ".self::$tablename." where id=$id";
		Executor::doit($sql);
	}
	public function del(){
		$sql = "delete from ".self::$tablename." where alumn_id=$this->alumn_id and team_id=$this->team_id";
		Executor::doit($sql);
	}
	*/
// partiendo de que ya tenemos creado un objecto MateriaCursoData previamente utilizamos el contexto
	public function update(){
		$sql = "update ".self::$tablename." set name=\"$this->name\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		$sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new MateriaCursoData());
	}

	public static function getAllByCursoId($id){
		$sql = "select * from ".self::$tablename." where id_cursomat=$id";
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaCursoData());
	}

	public static function getIdMatByIdCurso($id){
		$sql = "select * from ".self::$tablename." where id_cursomat=$id";
		$query = mysql_query($sql);
		$contador=array();
		while ($fila=mysql_fetch_array($query)) {
			$contador[]=$fila;
		}
		return $contador;
	}

	public static function getAll(){
		$sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaCursoData());

	}

		public static function getAllByTeamId($id){
		$sql = "select * from ".self::$tablename." where team_id=$id";
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaCursoData());
	}

		public static function getAllByAlumnId($id){
		$sql = "select * from ".self::$tablename." where alumn_id=$id";
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaCursoData());
	}
	
	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where name like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaCursoData());
	}


}

?>