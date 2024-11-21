delimiter //
use tfi;
create function bigNumber(v1 int , v2 int)
returns int
deterministic
no sql
begin
if v1>v2 then
return v1;
else
return v2;
end if;
end //
delimiter //

select tfi.bigNumber(21,12);