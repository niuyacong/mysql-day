
#事务
DECLARE t_error INTEGER DEFAULT 0;    
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;    

START TRANSACTION; 

IF t_error = 1 THEN   
 SELECT '升级失败，稍后重试' as c;
            ROLLBACK;    
        ELSE    
SELECT '升级成功' as c;
            COMMIT;    
        END IF;  