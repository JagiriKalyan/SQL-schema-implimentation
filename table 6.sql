delimiter //
use batch414;
create trigger trackUpdate1 after update on dummy
for each row
begin
if old.id=111
then insert into updatelog(id,salary,location,update_at) values(new.id,new.salary,new.location,now());
end if;
end //