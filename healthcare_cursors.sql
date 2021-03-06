# CURSORS
# 1 selct name of employees create cursor 


 delimiter //
 create procedure PROC_NAME(inout name_list varchar(4000))
	 begin
	  declare isdone integer default 0;
      declare e_name varchar(100) default "";
    
      declare c1 cursor for select EMP_NAME from employees;
	
	 declare continue handler for not found set isdone = 1; # handles when cursor list empty
    
    open c1;
	  curr_loop:loop
      
	   fetch c1 into e_name;   # retrieve the next row pointed by the cursor and move the cursor to the next row in the result set.
	
	  if isdone = 1 then
			  leave curr_loop;
	  end if;
      
     set name_list  = concat( e_name , ";" , name_list);
	  end loop curr_loop;
        close c1;
        
  end //            
				
  
            
            
SET @name_list ="";  
CALL PROC_NAME(@name_list);  
SELECT @name_list; 
            
            
  
  
  # 2 SELECT diseases in hospital
  
  
            
            
            
        delimiter //
 create procedure PROC_DISEASE(inout name_list varchar(4000))
	 begin
	  declare isdone integer default 0;
      declare diseases varchar(100) default "";
    
      declare c1 cursor for select disease from patients;
	
	 declare continue handler for not found set isdone = 1; # handles when cursor list empty
    
    open c1;
	  curr_loop:loop
      
	   fetch c1 into diseases;   # retrieve the next row pointed by the cursor and move the cursor to the next row in the result set.
	
	  if isdone = 1 then
			  leave curr_loop;
	  end if;
      
     set name_list  = concat( diseases , ";" , name_list);
	  end loop curr_loop;
        close c1;
        
  end //            
            
  
            
            
SET @name_list ="";  
CALL PROC_DISEASE(@name_list);  
SELECT @name_list; 
                 
            
            
		
            
            
            
            
     
     
            
            
            
            
            