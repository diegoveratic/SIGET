<?php

if(!empty($_POST)){
	$found = UserMateriaCursoData::GetByUM($_POST["user_id"],$_POST["id_mat"]);
	if($found==null && $_POST["val"]!=""){
	$agrega = new UserMateriaCursoData();
	$agrega->val = $_POST["val"];
	$agrega->user_id = $_POST["user_id"];
	$agrega->id_mat = $_POST["id_mat"];
	$agrega->add();
	}else if($found=!null&&$_POST["val"]==""){
	$found = UserMateriaCursoData::GetByUM($_POST["user_id"],$_POST["id_mat"]);
	$found->del();
	}
}
?>