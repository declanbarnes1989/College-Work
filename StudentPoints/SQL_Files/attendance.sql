CREATE TABLE `attendance` (
  `Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student_ID` varchar(11) NOT NULL DEFAULT '',
  `Room` varchar(255) NOT NULL,
  `Scan_Time` datetime DEFAULT CURRENT_TIMESTAMP,
  `weekDay` varchar(11) NOT NULL,
  `module_Id` int(11) NOT NULL,
  PRIMARY KEY (`Attendance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

