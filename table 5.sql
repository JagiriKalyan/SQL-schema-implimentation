delimiter //
use tfi;
create function bigNumberAmongValues()
returns int
deterministic
no sql
begin
declare v1 int;
declare v2 int;
set v1 = 12;
set v2 = 32;
if v1>v2 then
return v1;
else
return v2;
end if;
end //
delimiter //

select tfi.bigNumberAmongValues();