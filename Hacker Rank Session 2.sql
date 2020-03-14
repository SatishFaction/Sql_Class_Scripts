select max(salary)-min(salary) from Employee
select replace(salary,'0','') from Employee
select CEILING(avg(salary)- avg(convert(int,replace(salary,'0',''))))from Employee

create table Emp_Hacker(emp_id int,name varchar(30),months int,salary int)
insert into Emp_Hacker (emp_id,name,months,salary)
values(74197,'Kimberly',16,4372),(78454,'Bonnie',8,1771)
select * from Emp_Hacker
select  max(months*salary) as Total_salary,count(*) from Emp_Hacker 
where months*salary=(select max(months*salary) from Emp_Hacker)

select * from Emp_Hacker
SELECT ROUND(123.9994, -1)
select cast((630/60.0) as  decimal(16,2))
