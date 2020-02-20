
select * from Employee

insert into Employee values(11,'Sambal',30,10000)
insert into Employee (id,name,age,salary) values(12,'Nadeem',29,300000)
delete from Employee where name='Manish'
select name, salary as sal from Employee
select 'Mr'+' '+name as Name,salary from Employee
select * from Employee where salary<100000
select * from Employee where salary between 10000 and 200000
select * from Employee where name='satty' or name='apurba'
select * from Employee where name in ('satty','apurba','sambal')
select distinct name,salary from Employee
select distinct age from Employee
select name, salary into emp1 from 
select * from emp1
create table new_table(bonus int ,sal int,sal_bon as bonus+sal)
select * from new_table
insert into new_table (bonus,sal) values(1000,1000)
select avg(salary) as Avg_Salary from Employee
select Max(salary) as Highest_Salary from Employee
select name+cast(id as varchar(10)) as nam_id from Employee
