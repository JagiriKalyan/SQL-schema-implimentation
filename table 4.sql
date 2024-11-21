use tfi;
delimiter //
create procedure tfi.getdirectors_ids()
begin
select directors_id from  tfi.directors where  directors_id>4;
end //
delimiter //