CREATE TABLE `timetable` (
  `module_Id` int(11) NOT NULL AUTO_INCREMENT,
  `module_Name` varchar(50) NOT NULL,
  `module_room` varchar(11) NOT NULL,
  `module_start_date` date DEFAULT NULL,
  `module_end_date` date DEFAULT NULL,
  `module_start_time` time DEFAULT NULL,
  `module_end_time` time DEFAULT NULL,
  `weekDay` varchar(11) NOT NULL,
  PRIMARY KEY (`module_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
