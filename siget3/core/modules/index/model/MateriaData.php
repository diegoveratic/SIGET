<?php 
class MateriaData {
	public static $tablename = "materia";


	public function MateriaData(){
		$this->name = "";
		$this->nombre_mat = "";
		$this->email = "";
		$this->password = "";
		$this->created_at = "NOW()";
	}
	
	public static function getById($id){
		$sql = "select * from ".self::$tablename." where id_mat=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new MateriaData());
	}

	public static function getAllByCursoId($id){
		$sql = "select * from ".self::$tablename." where id_cursomat=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new MateriaData());
	}

	public static function getAll(){
		$sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaData());

	}
	
	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where name like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new MateriaData());
	}


}

?>