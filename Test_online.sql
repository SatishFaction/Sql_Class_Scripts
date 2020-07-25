create table STU(s_id integer,name varchar(40),login varchar(40),age integer,gpa integer)
insert into STU(s_id,name,login,age,gpa) values(53666,'Kanye','A@cs',28,4),(53655,'Tupac','B@cs',26,3.5),(53688,'Bieber','C@cs',22,3.66)
create table enrolled(s_id integer, cid varchar(30),grade varchar(2))
insert into enrolled(s_id,cid,grade) values(53666,'15-415','C'),(53688,'15-721','A'),
(53688,'15-826','B'),(53655,'15-415','c'),(53666,'15-721','C')
select * from enrolled
select * from STU
select  distinct cid from enrolled where grade='c'
select name, cid from STU,enrolled where STU.s_id=enrolled.s_id and enrolled.grade='c'
alter table STU add F_name varchar(20)
select * from STU
update STU set F_name='Satish' where s_id=53666
declare @cnt=0
while @cnt <