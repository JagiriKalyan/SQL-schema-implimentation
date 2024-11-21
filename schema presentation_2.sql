use SQLproject;

-- VIEWS 

create view emp_dep_view as 
select e.emp_id,e.emp_name,e.salary,d.dept_name from employee e join department d on e.dept_id=d.dept_id; 

-- INDEXES

create index idx_salary on employee(salary);
select * from employee where salary>40000;

-- STORED PROCEDURES

delimiter //
create  procedure add_items(IN itemID int,itemName varchar(21),IN itemPrice int)
begin
    insert into item(item_id,item_name,item_price) values (itemID, itemName, itemPrice);
end//
    
-- STORED FUNCTIONS

DELIMITER //
create function countofemp (deptID INT) 
returns int
deterministic
begin
    declare count int;
    select count(*) into count from employee where dept_id = deptID;
    return count;
end //
DELIMITER ;

-- JOINS

-- INNER JOIN

SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;

-- LEFT JOIN

SELECT d.dept_name, e.emp_name
FROM department d
LEFT JOIN employee e ON d.dept_id = e.dept_id;

-- RIGHT JOIN

SELECT e.emp_name, d.dept_name
FROM employee ecustomer
RIGHT JOIN department d ON e.dept_id = d.dept_id;