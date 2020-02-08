select * from Employee
insert into Employee(id,name,age,salary) values(3,'Manish',36,20000)
insert into Employee values(4,'Satish',31,2000000)
select * from Employee
insert into Employee values(5,'Rahul',31,2000000),(6,'Apurba',32,20000000),(7,'Sumit',33,10000)
select * from Employee
insert into Employee values(8,'Jamal',25,122333),(9,'Jordan',32,423232),(10,'Gayle',21,10000)
select id,name from Employee
select name, salary-200 as salary from employee
select 'Shri'' '+name, age,salary,age*salary as random from Employee
select * from Employee where salary<40000
select id,salary,age from Employee where salary=200000
select * from Employee where age <> 32 and age<=32
select * from Employee where age <> 32 or age<=32
select * from Employee where (age>20 and salary>40000) or (age>25 and salary>40000)
select * from Employee where salary between 200000 and 2000000

