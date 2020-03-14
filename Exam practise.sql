select * from Employee
select name +' '+ cast(id as varchar) name_id from Employee
alter table Employee add months int NUll
update Employee set months=12
update Employee set months =10 where id in(1,2,3)
update Employee set months =5 where id in(7,8,9)
select name,age,salary from Employee where age between 25 and 32 or (salary between 100000 and 300000)