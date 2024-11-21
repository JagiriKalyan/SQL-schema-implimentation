delimiter //
use tfi;
create function fact(num int , sum int)
returns int
deterministic
no sql
begin
while num>=1 do
set sum = sum * num;
set num = num-1;
end while;
return sum;
end //
delimiter //

select tfi.fact(4,1);