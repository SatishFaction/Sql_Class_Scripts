select * from Employee where id%2=0 /* To select records with even number id's*/
select * from Employee
select ((select count(name) from Employee) - (select distinct count (distinct name) from Employee))
select count(name) from Employee
select distinct count (name) from Employee

select distinct count (distinct name) from Employee
select * from Employee where salary>(select avg(salary) from Employee)
select avg(salary) from Employee
select top 1 name,min (len(name)) as name_len from Employee group by name order by name_len
select min (len(name)) from Employee
select top 1 name,max (len(name)) as name_len from Employee group by name order by name_len desc
select * from Employee
insert into Employee (id,name,age,salary) values(16,'Okleay',55,800000)
select distinct name from Employee where name like 'a%' or name like 'e%' or name like 'i%' or name like 'o%' or name like 'u%'
select distinct name from Employee where name like '[aeiou]%[aeiou]'
select distinct name from Employee where name not like '[aeiou]%'
select name from Employee where salary>10000 order by substring(name,-3,len(name)),id
select name from Employee where name like '_p%'
SELECT 
     name 
FROM
     Employee 
WHERE
     salary > 10000 
ORDER BY
     RIGHT(name, 3) ASC
   , id ASC
   select * from Employee

SELECT 'AverageSal' AS AverageSalByAge, 
[32], [33]
FROM
(SELECT age, salary
 FROM Employee) AS SourceTable
PIVOT
(
 avg(salary)
 FOR age IN ([32], [33])
) AS PivotTable;
select avg(salary),age from Employee group by age


SELECT name,[10000],[100000]
FROM
(SELECT name, salary
 FROM Employee) AS SourceTable
PIVOT
(
 name
 FOR salary IN ([10000],[100000])
) AS PivotTable;



SELECT 
         ROW_NUMBER() OVER (PARTITION BY age ORDER BY Name) rn,
         [Name],
         [age] 
     FROM 
         Employee






