create table rev_emp (id int, name varchar(100),salary bigint,age int,desig varchar(100))
insert into rev_emp(id,name,salary,age,desig) values(1,'Satish',400000,32,'softengineer')
insert into rev_emp values(10,'Javed',4000000,35,'Consultant'),
(2,'Rahul',600000,31,'Architect'),
(3,'Apurba',1200000,25,'Senior Softengineer'),
(4,'Jorden',300000,23,'HR'),
(5,'Satyam',5000000,33,'Admin'),
(6,'Rastogi',3500000,45,'Sales Head'),
(7,'Sourav',1100000,28,'AVP'),
(8,'Ram',4800000,51,'VP'),
(9,'Arshan',200000,24,'Trainee')
select * from rev_emp
select distinct * from rev_emp
select name from rev_emp where desig='Senior Softengineer'
select name, age from rev_emp where age>30
select name,desig,age from rev_emp where age between 25 and 30
select name from rev_emp where salary> 300000 and age >35
select * from rev_emp where name in ('Apurba','Satish','Ram')
select * from Transactions
select firstname+surname as full_name from Transactions 
select count(*) from Transactions where description='Pillowcase'
select count(distinct(shipping_state)) from Transactions
select max(loyalty_discount) from Transactions
select * from Transactions where surname like '%k'
select * from rev_emp where name like '%ish'
