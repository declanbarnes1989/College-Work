<?php
//Author: Declan Barnes

define("DB_HOST", "mysql2.gear.host");
define("DB_USER", "loginapidb5");
define("DB_DATABASE", "loginapidb5");
define("DB_PASSWORD", "Qz00c?-DSgVQ");
 
$con = mysqli_connect(DB_HOST,DB_USER,DB_DATABASE,DB_PASSWORD);
 
$sql = "SELECT * FROM timetable WHERE module_room ='HLAB' AND weekDay=DAYNAME(CURDATE())
		AND module_start_date<=CURDATE() AND module_end_date>=CURDATE() 
		AND module_start_time<=CURTIME() AND module_end_time>=CURTIME()";
 
$res = mysqli_query($con,$sql);
 
$result = array();
 
while($row = mysqli_fetch_array($res)){
array_push($result,
array('Student_ID'=>$row[0],
'Points'=>$row[1]
));
}
 
echo json_encode(array("result"=>$result));
 
mysqli_close($con);
 
?>