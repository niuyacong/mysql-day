SELECT * from (
select DATE_FORMAT(send_time,'%Y%m%d') days,count(*)c,sum(pack_money)as money from spread_packlist

where spreadid=10 and state!=0 group by days)s ORDER BY days desc 

