 <?php
class UserMateriaCursoData {
	public static $tablename = "user_team";


	public function UserMateriaCursoData(){
		$this->val = "";
		$this->user_id = "";
		$this->id_mat = "";
		$this->password = "";
		$this->created_at = "NOW()";
	}

	public function add(){
		$sql = "insert into ".self::$tablename." (val,user_id,id_mat) ";
		$sql .= "value ($this->val,$this->user_id,$this->id_mat)";
		return Executor::doit($sql);
	}

	public static function delById($id){
		$sql = "delete from ".self::$tablename." where id=$id";
		Executor::doit($sql);
	}
	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		Executor::doit($sql);
	}

// partiendo de que ya tenemos creado un objecto UserMateriaCursoData previamente utilizamos el contexto
	public function update(){
		$sql = "update ".self::$tablename." set val=\"$this->val\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		$sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserMateriaCursoData());
	}
	public static function getByUserId($id){
		$sql = "select * from ".self::$tablename." where user_id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserMateriaCursoData());
	}
	public static function getByUM($user,$id_mat){
		$sql ="select * from ".self::$tablename." where user_id=$user and id_mat=$id_mat";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserMateriaCursoData());
	}

	public static function getAll(){
		$sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserMateriaCursoData());

	}
	
	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where name like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserMateriaCursoData());
	}


}

?>