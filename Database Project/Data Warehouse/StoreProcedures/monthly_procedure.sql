CREATE DEFINER=`root`@`localhost` PROCEDURE `monthly_procedure`()
BEGIN

	declare loadAmt  int;
	declare MonthDate_From, MonthDate_To date;
    
    
    
    set loadAmt = 1;
   
    set MonthDate_From = "1998-01-01";
    set MonthDate_To = "1998-12-31";
    
   
   
    WHILE loadAmt <=12 DO
		INSERT INTO Monthly_fact(MonthDate_From, MonthDate_To)
        SELECT 
      
		MonthDate_From,
	    MonthDate_To
	
    FROM dual;
    
	set loadAmt = loadAmt + 1;
    set MonthDate_From = date_add(MonthDate_From, interval 1 month);
	set MonthDate_To  = date_add(MonthDate_To , interval 1 month);
	
    
    END WHILE;

END