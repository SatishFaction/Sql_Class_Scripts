/**Rank function**/
select * from Employee
select a.* from (select * , DENSE_RANK() Over(Order by salary desc) as Sal_Rank from Employee) a where a.Sal_Rank=2 
select * , DENSE_RANK() over(order by salary desc) as Sal_rank from Employee
select * , RANK() over(order by salary desc) as Sal_rank from Employee