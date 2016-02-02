<?php
//Author: Declan Barnes

if (isset($_POST['tag']) && $_POST['tag'] != ''){
	
	$tag = $_POST['tag'];
	
	require_once 'include/DBFunctions.php';
	$db = new DBFunctions();
	
	$response = array("tag" => $tag, "error" => FALSE);
	
	if($tag == 'login'){
		
		$Student_ID = $_POST['Student_ID'];
		$password = $_POST['password'];
		
		$user = $db->getUserByEmailAndPassword($Student_ID, $password);
		if($user != FALSE){
			$response["error"] = FALSE;
			$response["uid"] = $user["unique_id"];
			$response["user"]["name"] = $user["name"];
			$response["user"]["created_at"] = $user["created_at"];
			$response["user"]["updated_at"] = $user["updated_at"];
			$response["user"]["Student_ID"] = $user["Student_ID"];

			echo json_encode($response);
		}else{
			$response["error"] = TRUE;
			$response["error_msg"] = "Incorrect Student ID or password";
			echo json_encode($response);
		}
	}
	else if($tag == 'register'){
		
		$name = $_POST['name'];
		$Student_ID = $_POST['Student_ID'];
		$password = $_POST['password'];
		
		if($db->isUserExisted($Student_ID)){
			$response["error"] = TRUE;
			$response["error_msg"] = "User already exist";
			echo json_encode($response);
		}else{
			
			$user = $db->storeUser($name, $Student_ID, $password);
			if($user){
				$response["error"] = FALSE;
				$response["uid"] = $user["unique_id"];
				$response["user"]["name"] = $user["name"];
 				$response["user"]["created_at"] = $user["created_at"];
				$response["user"]["updated_at"] = $user["updated_at"];
				$response["user"]["Student_ID"] = $user["Student_ID"];

				echo json_encode($response);
			}
			else{
				$response["error"] = TRUE;
				$response["error_msg"] = "Error occurred in Registration";
				echo json_encode($response);
			}
		}
	}
	else{
		$response["error"] = TRUE;
		$response["error_msg"] = "Unknown 'tag' value. It should be either login or register";
		echo json_encode($response);
	}
}
	
?>