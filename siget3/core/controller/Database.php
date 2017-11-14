<?php
class Database {
	public static $db;
	public static $con;
	function Database(){
		$this->user="u908845748_xoola";$this->pass="10101972";$this->host="10.1.2.122";$this->ddbb="u908845748_xoola";
	}

	function connect(){
		$con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
		return $con;
	}

	public static function getCon(){
		if(self::$con==null && self::$db==null){
			self::$db = new Database();
			self::$con = self::$db->connect();
		}
		return self::$con;
	}
	
}
?>
