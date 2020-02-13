select * from Employee where name like 'r%'/* where name starts with R*/
select * from Employee where name like '%a'/*where name ends with a*/
select * from Employee where name like '%a%' /*where name has an a */
select * from Employee where name like '_p%' /* where second character is p*/
create table cal (low int, high int ,myavg as (low+high)/2)
select * from cal
insert into cal (low,high) values(2,4) /* to create computed column table*/
select distinct name  from Employee 
select distinct age from Employee
select top 10 name, salary from Employee
select * from Employee order by salary desc /* order by used to sort */
select * from Employee order by salary desc, age 
select * into emp1 from Employee /* creates a duplicate table */
select * from emp1 
/* sql aliases are used for readability */
/* + is used for concatination*/
select cast(id as varchar(10))+name as name_id from Employee /* concatinating values of two columns*/
alter table Employee add Last_Name varchar(10)
select * from Employee
/* Aggregate Functions*/
/* Avg(),Count(),Max(),Min(),Sum() */

select avg(salary)as Average_Salary from Employee
select name , id from Employee where salary> avg(salary)
