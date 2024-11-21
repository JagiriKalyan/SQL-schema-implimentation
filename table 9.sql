create database batch414;
use batch414;
create table Demo(
id int,
name varchar(21),
salary int,
lacation varchar(21));

insert into batch414.Demo values(111,'abcde',13000,'che');
insert into batch414.Demo values(222,'wgvfu',23000,'pune');
insert into batch414.Demo values(111,'abcde',43000,'hyd');
insert into batch414.Demo values(111,'abcde',45000,'ban');

beforeInsertOnDemo
delimiter //
create trigger batch414.beforeInsertOnDemo before insert on demo
for each row
begin
if new.salary > 50000 then set new.location='mumbai';
end if;
end //
delimiter //

insert into batch414.Demo values(555,'abcde',55000,'delhi');

update batch414.demo
set lacation='location';