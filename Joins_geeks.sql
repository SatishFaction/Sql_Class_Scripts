
select * from student
select * from marks
select avg(score) from marks where status='pass'
select * from details
select s.s_name,m.score,m.status,d.address_city 
from student s inner join marks m on s.s_id=m.s_id inner join details d on d.school_id=m.school_id

select *  from student s inner join marks m  on s.s_id=m.s_id where m.status='pass'
select s.s_name,m.status from student s left join marks m  on s.s_id=m.s_id 

select * 
from student s inner join marks m on s.s_id=m.s_id inner join details d on d.school_id=m.school_id where m.status='pass'

select *  from student s inner join marks m  on s.s_id=m.s_id 