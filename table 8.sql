create database batch414;
use batch414;
create table Dummy(
id int,
name varchar(21),
salary int,
location varchar(21));

insert into batch414.Dummy values(111,'abcde',13000,'che');
insert into batch414.Dummy values(222,'wgvfu',23000,'pune');
insert into batch414.Dummy values(111,'abcde',43000,'hyd');
insert into batch414.Dummy values(111,'abcde',45000,'ban');

delimiter //
create trigger batch414.beforeInsertOnDummy before insert on dummy
for each row
begin
if new.salary > 50000 then set new.location='mumbai';
end if;
end //
delimiter //

insert into batch414.Dummy values(111,'efveh',55000,'delhi');