/*Constraints*/
create table emp_contriant
(id int primary key,name varchar(10) 
unique,age int not null check (age>10),
salary bigint default(3000), dep_id int foreign key references Department(dep_id))

alter table Department add constraint PK_deptc primary key (dep_id)

alter table department alter column dep_id int NOT NULL
select * from emp_contriant

insert into emp_contriant(id,name,age,salary,dep_id) values(7,'Zameel',6000,36,1)
select * from Department
delete from department where dep_id=4
select 45 as col1,46 as col2
select (45+46)
select 5*5
select age, salary from Employee