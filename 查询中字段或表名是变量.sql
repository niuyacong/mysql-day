BEGIN
	#Routine body goes here...
	DECLARE bgl int;
	
	DECLARE flag int;
 
	DECLARE fieldname VARCHAR(50);
	SET @sqlStr:=CONCAT("select count(id)c from sline_mall_goods where shop_id=",shopid," and ",fieldname,"='1'");
    PREPARE stmt from @sqlStr;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;  

	
	select @sqlStr;
END