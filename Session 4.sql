/* we use group by to sort data and divide it into groups*/
/* We cannot use aggregate functions with individual columns*/
select avg(salary),age from Employee /* average salary is an aggregated value and age has multipule values from the column*/
select avg(salary),age from Employee group by age /*this will work*/
select avg(salary) as Avg_Sal,age from Employee group by (age)
select avg(salary),sum(age) from Employee
select count(id),age,salary from Employee group by age,salary

select * from Employee
/* sub queries*/
select * from Employee where id in(select max(id) from Employee)
select * from Employee where salary in (Select salary from Employee where salary between 10000 and 200000) and age in (select age from Employee where age between 21 and 25)
select * from Employee order by (salary) desc
Select * from Employee where salary in (select top 2 salary from Employee) and salary not in (select top 1 salary from Employee)
/* finding the 2 nd highest salary*/
select max(salary) from Employee where salary<(select max(salary) from Employee)
select top 1 * from Employee where salary in(select top 3 salary from Employee order by (salary) desc) order by (salary) desc
select top 2 * from Employee order by (salary) desc
select top 1 * from Employee where salary <(select max(salary) from Employee) order by salary desc
select max(salary) from Employee where salary not in (select max(salary) from Employee) 

select max(salary)as max_salary,avg(salary) as avg_Sal, age from Employee group by age order by max_salary
select max(salary)as max_Sal from Employee 
select * from Employee where salary=20000000
select name, age from Employee where salary=20000000
select age from Employee where salary=20000000
select age from Employee where salary=(select max(salary) from Employee)/*this will return 32*/
select avg(salary) from Employee where age=32
select Max(salary) from Employee where age=32
select min (salary) from Employee where salary >(select avg(salary) from Employee where age=(select age from Employee where salary=(select max(salary) from Employee))) and salary<(select Max(salary) from Employee where age=(select age from Employee where salary=(select max(salary) from Employee)))
