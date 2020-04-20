begin 
DECLARE i INT DEFAULT 0;
DECLARE str char(50);
DECLARE str1 char(50);
DECLARE overstr char(50);
set i=0;
WHILE i<count do 
	set i=i+1;
  SELECT CONCAT(FLOOR(min + (RAND() *( max-1))),FLOOR(0 + (RAND() * 9)),FLOOR(0 + (RAND() * 9))) into str1 ;
  SELECT CONCAT(FLOOR(1 + (RAND() * 8)),FLOOR(0 + (RAND() * 9))) into str1 ;

	INSERT into `spread_packlist` ( `spreadid`,pack_money,add_time,state)
	VALUES (spreadid,str1,now(),0);

end WHILE;

END