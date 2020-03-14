create table depat(dep_id int primary key ,dep_name varchar(10))
insert into depat (dep_id,dep_name) values(1,'HR'),(2,'Admin'),(3,'IT'),(4,'operations')
select * from depat
create table exam_practise(id 
int 
primary key, name varchar(20) unique,
age int not null check(age>18),salary int default(5000),dep_id int foreign key references depat(dep_id)) 
