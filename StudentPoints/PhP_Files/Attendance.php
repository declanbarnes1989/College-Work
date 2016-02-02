<?php

if (isset($_POST['tag']) != ''){
	
	$tag = $_POST['tag'];
	
	require_once 'include/DBFunctions.php';
	$db = new DBFunctions();
	
	$response = array("tag" => $tag, "error" => FALSE);
	
	if($tag == 'attendance'){
		
		$Student_ID = $_POST['Student_ID'];
		$Room = $_POST['Room'];
		$weekDay = $_POST['weekDay'];
		
		
		
			$user = $db->storeAttendance($Student_ID, $Room, $weekDay);
			if($user){
				$response["error"] = FALSE;
				$response["user"]["Student_ID"] = $user["Student_ID"];
				$response["user"]["Room"] = $user["Room"];
				$response["user"]["Scan_Time"] = $user["Scan_Time"];
				$response["user"]["weekDay"] = $user["weekDay"];
				
				
				

				echo json_encode($response);
			}
			else{
				$response["error"] = TRUE;
				$response["error_msg"] = "Error occurred in attendance";
				echo json_encode($response);
			}
		}
	}
	else{
		$response["error"] = TRUE;
		$response["error_msg"] = "Unknown 'tag' value. It should be attendance";
		echo json_encode($response);
	}
	
?>