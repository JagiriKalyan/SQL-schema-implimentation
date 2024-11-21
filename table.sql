create database sales;
use sales;
create table orders(
customer_id int primary key,
customer_name varchar(100) not null,
dob date not null,
address varchar(100) not null,
email varchar(100) not null,
state varchar(100) not null
);

INSERT INTO orders (customer_id, customer_name, dob, address, email, state)
VALUES
  (1, 'John Doe', '1990-01-15', '123 Main St, Anytown, CA', 'johndoe@example.com', 'California'),
  (2, 'Jane Smith', '1985-07-22', '456 Elm St, Anytown, NY', 'janesmith@example.com', 'New York'),
  (3, 'Michael Johnson', '1992-11-10', '789 Oak St, Anytown, TX', 'michaeljohnson@example.com', 'Texas'),
  (4, 'Emily Davis', '1995-03-25', '101 Pine St, Anytown, FL', 'emilydavis@example.com', 'Florida'),
  (5, 'David Lee', '1988-09-08', '234 Cedar St, Anytown, IL', 'davidlee@example.com', 'Illinois'),
  (6, 'Sarah Wilson', '1993-05-12', '567 Maple St, Anytown, WA', 'sarahwilson@example.com', 'Washington'),
  (7, 'Robert Brown', '1987-11-20', '890 Birch St, Anytown, OH', 'robertbrown@example.com', 'Ohio'),
  (8, 'Linda Taylor', '1991-02-03', '123 Pine St, Anytown, PA', 'lindataaylor@example.com', 'Pennsylvania'),
  (9, 'Thomas Harris', '1989-08-15', '456 Oak St, Anytown, VA', 'thomasharris@example.com', 'Virginia'),
  (10, 'Karen Clark', '1994-04-27', '789 Elm St, Anytown, NC', 'karenclark@example.com', 'North Carolina'),
  (11, 'Daniel White', '1986-10-13', '101 Maple St, Anytown, SC', 'danielwhite@example.com', 'South Carolina'),
  (12, 'Melissa Moore', '1992-06-21', '234 Birch St, Anytown, GA', 'melissamoore@example.com', 'Georgia'),
  (13, 'William Carter', '1988-12-05', '567 Pine St, Anytown, AL', 'williamcarter@example.com', 'Alabama'),
  (14, 'Jennifer Lee', '1995-03-09', '890 Oak St, Anytown, LA', 'jenniferlee@example.com', 'Louisiana'),
  (15, 'Richard Hall', '1991-09-23', '123 Elm St, Anytown, MS', 'richardhall@example.com', 'Mississippi'),
  (16, 'Barbara Young', '1987-05-17', '456 Maple St, Anytown, AK', 'barbarayoung@example.com', 'Alaska'),
  (17, 'George Allen', '1993-11-02', '789 Birch St, Anytown, HI', 'georgeallen@example.com', 'Hawaii'),
  (18, 'Donna Nelson', '1990-07-14', '101 Pine St, Anytown, MT', 'donnanelson@example.com', 'Montana'),
  (19, 'Charles Mitchell', '1986-03-30', '234 Oak St, Anytown, ID', 'charlesmitchell@example.com', 'Idaho'),
  (20, 'Susan King', '1992-09-16', '567 Elm St, Anytown, WY', 'susanking@example.com', 'Wyoming');