/* self Join*/
Create table emp_seeison7 (id int, name varchar (30), age int,mgrid int)
insert into emp_seeison7 (id,name, age, mgrid)
values 
(1,'Himesh',21, NULL),
(2,'Sumit',22, 1),
(3,'Dileep',23, 1),
(4,'Abhishek',21, 2),
(5,'Ravi',22, 2),
(6,'Amit',21, 3)

select * into mgr from emp_seeison7
select * from mgr