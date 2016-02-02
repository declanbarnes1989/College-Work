<?php
//Author: Declan Barnes

class DBFunctions{
	
	private $db;
	
	function __construct(){
		require_once 'DBConnect.php';
		
		$this->db = new DBConnect();
		$this->db->connect();
	}
	
	function __destruct(){
		
	}
	
	public function storeUser($name, $Student_ID, $password){
		$uuid = uniqid('', true);
		$hash = $this->hashSSHA($password);
		$encrypted_password = $hash["encrypted"];
		$salt = $hash["salt"];
		$result = mysql_query("INSERT INTO users(unique_id, name, Student_ID, encrypted_password, salt, created_at, ) VALUES('$uuid', '$name', '$Student_ID', '$encrypted_password', '$salt', NOW())");
		
		if($result){
			$uid = mysql_insert_id();
			$result = mysql_query("SELECT * FROM users WHERE uid = $uid");
			
			return mysql_fetch_array($result);
		}else{
			return false;
		}
		
	}
	
	public function getUserByEmailAndPassword($Student_ID, $password){
		$result = mysql_query("SELECT * FROM users WHERE Student_ID = '$Student_ID' ") or die(mysql_error());
		$no_of_rows = mysql_num_rows($result);
		if($no_of_rows > 0){
			$result = mysql_fetch_array($result);
			$salt = $result['salt'];
			$encrypted_password = $result['encrypted_password'];
			$hash = $this->checkhashSSHA($salt, $password);
			
			if($encrypted_password == $hash){
				return $result;
			}
			else{
				return false;
			}
		}		
	}
	
	
	public function isUserExisted($Student_ID){
		$result = mysql_query("SELECT Student_ID from users WHERE Student_ID = '$Student_ID' ");
		$no_of_rows = mysql_num_rows($result);
		if($no_of_rows > 0){
			return true;
		}else{
			return false;
		}
	}
	
	
	public function hashSSHA($password){
		$salt = sha1(rand());
		$salt = substr($salt, 0, 10);
		$encrypted = base64_encode(sha1($password . $salt, true) . $salt);
		$hash = array("salt" => $salt, "encrypted" => $encrypted);
		
		return $hash;
	}
	
	public function checkhashSSHA($salt, $password){
		
		$hash = base64_encode(sha1($password . $salt, true) . $salt);
		
		return $hash;
	}

	
	public function storeAttendance($Student_ID, $Room, $Day_of_Week){
		$result = mysql_query("INSERT INTO attendance(Student_ID, Room, Scan_Time, Day_of_Week ) VALUES('$Student_ID', '$Room', NOW()), '$Day_of_Week'");
		
		if($result){
			$result = mysql_query("SELECT * FROM attendance WHERE Student_ID = $Student_ID");
			
			return mysql_fetch_array($result);
		}else{
			return false;
		}
		
	}
	
	public function checkTimetable($module_Id, $module_Name, $room, $module_start_date, $module_end_date, $module_start_time, $module_end_time){
		$result = mysql_query("SELECT FROM timetable WHERE room = 'SCR1' && module_end_time > module_start_time &&  ")
	}
	
}
?>