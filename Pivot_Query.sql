--Syntax:

SELECT (ColumnNames) 
FROM (TableName) 
PIVOT
 ( 
   AggregateFunction(ColumnToBeAggregated)
   FOR PivotColumn IN (PivotColumnValues)
 ) AS (Alias) //Alias is a temporary name for a table


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

Select a.coursename, b.coursename , a.PROGRAMMING, b.INTERVIEWPREPARATION from 

(Select coursename , price as PROGRAMMING from coaching where CourseCategory = 'PROGRAMMING') a full join 
(Select coursename , price as INTERVIEWPREPARATION from coaching where CourseCategory = 'INTERVIEWPREPARATION') b 
on a.coursename =b.coursename


Select Case 
When a.coursename is NULL  Then b.coursename  
when  b.coursename is NULL Then b.coursename 
Else  a.coursename END
, a.PROGRAMMING, b.INTERVIEWPREPARATION from 
(Select coursename , price as PROGRAMMING from coaching 
where CourseCategory = 'PROGRAMMING') a 
full join 
(Select coursename , price as INTERVIEWPREPARATION 
from coaching where CourseCategory = 'INTERVIEWPREPARATION') b 
on a.coursename =b.coursename


 ---- Pivot Query
SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
) AS PivotTable 



SELECT CourseCategory, C, JAVA, PYTHON, [PLACEMENT]
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseName IN (C, JAVA, PYTHON, [PLACEMENT] ) 
) AS x 
 


 SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION into #test
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
) AS PivotTable 

-- Unpivot Syntax
SELECT (ColumnNames) 
FROM (TableName) 
UNPIVOT
 ( 
   AggregateFunction(ColumnToBeAggregated)
   FOR PivotColumn IN (PivotColumnValues)
 ) AS (Alias)

 ----- Storing Pivot data
SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION into #test
FROM Coaching 
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
) AS PT 
-- Validating Data
Select * from #test
-- Executing unpivot query
SELECT CourseName, CourseCategory, Price 
FROM 
#test
UNPIVOT 
( 
Price FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION)
) 
AS UPT

SELECT CourseName, CourseCategory, Price 
FROM 
#test
UNPIVOT 
( 
Price FOR CourseCategory IN (PROGRAMMING)
) 
AS UnpivotTable
