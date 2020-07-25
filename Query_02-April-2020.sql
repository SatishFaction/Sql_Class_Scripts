emp			
id 	name	age 	mgrid
1	Himesh	21	2
2	Dillep	22	3
3	Ravi	21	4
4	Sumit	22	Null



Create table emp (id int, name varchar (30), age int,mgrid int)

insert into emp (id,name, age, mgrid)
values 
(1,'Himesh',21, NULL),
(2,'Sumit',22, 1),
(3,'Dileep',23, 1),
(4,'Abhishek',21, 2),
(5,'Ravi',22, 2),
(6,'Amit',21, 3)

Select * from emp
Select * into mgr from emp

Select emp.* ,mgr.* 
from emp inner join emp as mgr 
on emp.id = mgr.mgrid

Select emp.* ,mgr.* 
from emp left join mgr 
on emp.id = mgr.mgrid


Select a.* ,b.* 
from emp as a left join emp as b
on a.id = b.mgrid

Select emp.* ,mgr.* 
from emp  left join emp as mgr
on emp.id = mgr.mgrid

Select emp.* ,mgr.* 
from emp  left join mgr
on emp.id = mgr.mgrid


Select emp.id , emp.name , mgr.name
from emp  left join emp as mgr
on emp.id = mgr.mgrid

Select emp.* ,mgr.* 
from emp  full join emp as mgr
on emp.id = mgr.mgrid



Select 
emp.name as employee
 ,mgr.name as reportee 
from 
emp left join mgr 
on emp.id = mgr.mgrid

Select 
emp.name as employee
 ,mgr.name as reportee 
from 
emp left join emp as mgr 
on emp.id = mgr.mgrid


Select 
emp.name as employee
 ,mgr.name as reportee 
from 
emp right join emp as mgr 
on emp.id = mgr.mgrid

Select 
lower(emp.name) as Mangers
 ,upper(mgr.name) as employee 
from 
emp right join mgr 
on emp.id = mgr.mgrid


select * from emp


Manger - L1	L2	L3
Himesh	Sumit	Abhishek
Himesh	Dileep	Amit
Sumit	Abhishek	NULL
Sumit	Ravi	NULL
Dileep	Amit	NULL
Ravi	NULL	NULL
Amit	NULL	NULL
----------------------------------------



Select getdate()
Select DATEPART(yyyy, getdate())
Select DATEPART(dd, getdate())


select convert(varchar(10),getdate())
select convert(varchar(10),getdate(), 101)
select convert(varchar(10),getdate(), 102)
select convert(varchar(10),getdate(), 103)





Select row_number() over(order by name) emp_id , name , age
from emp 

Dense_rank

Anuj -- 100 --1
Satyam -- 100 --1
Arshad -- 99 --2
aman--99 --2
indrajeet -- 98 -- 3

rank

Anuj -- 100 --1
Satyam -- 100 --1
Arshad -- 99 --3
aman--99 --3
indrajeet -- 98 -- 5



Drop table Coaching
go

Create Table Coaching 
( 
CourseName nvarchar(50), 
CourseCategory nvarchar(50),
Price int  
) 

Insert into Coaching  values('C', 'PROGRAMMING', 5000) 
Insert into Coaching  values('JAVA', 'PROGRAMMING', 6000) 
Insert into Coaching  values('PYTHON', 'PROGRAMMING', 8000) 
Insert into Coaching  values('PLACEMENT', 'INTERVIEWPREPARATION', 5000) 
Insert into Coaching  values('PYTHON', 'INTERVIEWPREPARATION', 9000)

SELECT * FROM Coaching


Course programming-price  inteview prepration-price
C			5000	Null
JAVA		6000	Null
PYTHON		8000	9000
PLACEMENT	NULL	9000


SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
) AS PivotTable

--Select * FROM Coaching

SELECT CourseCategory, C, JAVA,PYTHON, PLACEMENT
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseName IN (C, JAVA,PYTHON, PLACEMENT ) 
) AS indrijeet


Select 

Case 
When a.coursename is NULL  Then b.coursename  
when  b.coursename is NULL Then a.coursename 
Else  a.coursename END  as X
, a.PROGRAMMING
, b.INTERVIEWPREPARATION 
---------------------------------------------
from 
-----Select a.coursename, b.coursename ,PROGRAMMING ,INTERVIEWPREPARATION from 
(Select coursename , price as PROGRAMMING 
from coaching 
where CourseCategory = 'PROGRAMMING') a 
-------------------------
full join 
--------------------------------
(Select coursename , price as INTERVIEWPREPARATION 
from coaching
where CourseCategory = 'INTERVIEWPREPARATION') b 
on a.coursename =b.coursename













category  Subcategory
ML - python
ML- R
ML - java
Python - Numpy
Python - Pandas
Numpy - matrix operation

Declare @a datetime

Select @a =getdate()

Select getdate()
Select DATEPART(yyyy, @a)
Select DATEPART(dd, @a)


select convert(varchar(10),@a)
select convert(varchar(10),@a, 101)
select convert(varchar(10),@a, 102)
select convert(varchar(10),@a, 103)













