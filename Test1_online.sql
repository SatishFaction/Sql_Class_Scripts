create table sessions(id integer not null primary key ,userId integer not null,duration decimal not null)

select * from sessions
insert into sessions(id,userId,duration) values(3,1,1200)
select userId,avg(duration) from sessions group by userId
select * from emp1
create table students(id integer primary key,firstname varchar(30) not null,lastname varchar(30) not null)
insert into students(id, firstname, lastname) values(5,'john','g')
select * from students
select count(*) from students  where firstname in('john')
select count(*) from students
select count(firstname) from students where firstname='john'
select count(distinct id) from students where firstname='john'

SELECT Count(*) AS Distinctjohns
FROM (SELECT firstname FROM students
where fistname='john')
select count(firstname) from students where firstname='john' group by lastname
select count(distinct lastname) from students where firstname like '%john%' 
CREATE TABLE dogs (
  id INTEGER NOT NULL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
);
CREATE TABLE cats (
  id INTEGER NOT NULL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
);

INSERT INTO dogs(id, name) values(1, 'Lola');
INSERT INTO dogs(id, name) values(2, 'Bella');
INSERT INTO cats(id, name) values(1, 'Lola');
INSERT INTO cats(id, name) values(2, 'Kitty');
select 