create database SQLproject;

use SQLproject;

-- EMPLOYEE TABLE

create table employee(
emp_id int primary key,
emp_name varchar(21) not null,
salary float, dept_id int);

insert into employee values
(1,'Lokesh',500000,2),
(2,'sai',600000,1),
(3,'ram',400000,1),
(4,'siva',300000,3),
(5,'ravi',500000,2);
desc employee;


-- DEPARTMENT TABLE

create table department(
dept_id int,
dept_name varchar(20));

insert into department values
(1,'Developer'),
(2,'Testing'),
(3,'Management');

alter table department add constraint fk_dept foreign key (dept_id) references employee(emp_id);
desc department;

-- CUSTOMER TABLE

create table customer(
c_id int primary key,
c_name varchar(21) not null,
address varchar(200),
age int check (age>=18));

insert into customer values
(1,'nithin','HYD',22),
(2,'kalyan','AP',20),
(3,'Mahesh','HYD',24),
(4,'siva','AP',21),
(5,'Lokesh','AP',22);

-- ITEM TABLE

create table item(
item_id int primary key,
item_name varchar(21) not null,
item_price int);

insert into item values
(1,'mobile',20000),
(2,'back case',700),
(3,'buds',7000);

-- STUDENT TABLE

create table student(
s_id int primary key,
s_name varchar(21) not null,
grade char(1) not null);

insert into student values
(1,'krish','B'),
(2,'tej','C'),
(3,'mani','A'),
(4,'Lokesh','B'),
(5,'siva','A');