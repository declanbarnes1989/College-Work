CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
declare loadAmt int;
	declare WeekDate_From, WeekDate_To date;
    
    
    
    set loadAmt = 1;
   
    set WeekDate_From = "1998-01-01";
    set WeekDate_To = "1998-01-07";
    
   
   
    WHILE loadAmt <=52 DO
		INSERT INTO weekly_fact(WeekDate_From, WeekDate_To)
        SELECT 
      
		WeekDate_From,
	    WeekDate_To
	
    FROM dual;
    
	set loadAmt = loadAmt + 1;
    set WeekDate_From = date_add(WeekDate_From, interval 7 day);
	set WeekDate_To = date_add(WeekDate_To, interval 7 day);
	
    
    END WHILE;
END