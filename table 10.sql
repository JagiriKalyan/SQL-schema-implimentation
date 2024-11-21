delimiter //
use tfi;
create function bigNumberHere1234(v1 int , v2 int , v3 int)
returns int
deterministic
no sql
begin
if v1>v2 and v1>v3 then
return v1;
else if v2>v3 then
return v2;
else
return v3;
end if;
end //
delimiter //

select tfi.bigNumberHere1234(21,12,32);