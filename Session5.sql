/*Joins*/
create table EMP2(id int,name varchar(20),country_id  varchar(20),department_id int)
create table Country(id int, country_name varchar(30))
create table Department(dep_id int, Department_name varchar(30))
insert into EMP2(id,name,country_id,department_id ) values(8,'Malinga',3,4)
insert into  Department(dep_id,Department_name) values(4,'Support')
select * from Department
select * from EMP2
select * from Country
insert into Country(id,country_name) values(5,'GHANA')
select * from Employee
select * from EMP2 e inner join country c on e.id=c.id 
select * from EMP2 e left join country c on e.id=c.id 
select * from EMP2 e right join country c on e.id=c.id 
select * from EMP2 e inner join country c on e.id=c.id 
inner join Department as d on e.department_id=d.dep_id
select top 5 id,name,salary,age into EMP3 from Employee
select * from EMP3
insert into EMP3(id,name,salary,age) values(7,'Arshan',18000,23)
select name,salary from Employee e inner join EMP3 e1 on e.id=e1.id and e.age=e1.age
select * from Employee cross join EMP3


