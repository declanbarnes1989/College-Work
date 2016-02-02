CREATE DEFINER=`root`@`localhost` PROCEDURE `yearly_fact`()
BEGIN

	declare loadAmt  int;
	declare YearDate_From, YearDate_To date;
    
    
    
    set loadAmt = 1;
   
    set YearDate_From = "1998-01-01";
    set YearDate_To = "1998-12-30";
    
   
   
    WHILE loadAmt <=3 DO
		INSERT INTO Yearly_fact(YearDate_From,YearDate_To)
        SELECT 
      
	   YearDate_From,
	   YearDate_To
	
    FROM dual;
    
	set loadAmt = loadAmt + 1;
    set YearDate_From = date_add(YearDate_From, interval 12 month);
	set YearDate_To  = date_add(YearDate_To , interval 12 month);
	
    
    END WHILE;

END