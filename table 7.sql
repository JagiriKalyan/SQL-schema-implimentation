delimiter //
create trigger batch414.deleteRestrict1 before delete on dummy
for each row
begin
if old.location IN ('delhi','hyd','mumbai','pune') then
signal sqlstate '45000' set message_text='cant add this location';
end if;
end //
delimiter //

create table batch414.updatelog (id int , name varchar(21),salary int,location varchar(21),updated_at datetime);

update batch414.updatelog set id=111 where location='mumbai';