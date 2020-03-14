CREATE TABLE  "AGENTS" 
   (	
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY, 
	"AGENT_NAME" CHAR(40), 
	"WORKING_AREA" CHAR(35), 
	"COMMISSION" int, 
	"PHONE_NO" CHAR(15), 
	"COUNTRY" VARCHAR(25) 
	 )
INSERT INTO AGENTS VALUES ('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', '');
INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', 0.13, '075-12458969', '');
INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', 0.12, '044-25874365', '');
INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', '');
INSERT INTO AGENTS VALUES ('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', '');
INSERT INTO AGENTS VALUES ('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', '');
INSERT INTO AGENTS VALUES ('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', '');
INSERT INTO AGENTS VALUES ('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', '');
INSERT INTO AGENTS VALUES ('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', '');
INSERT INTO AGENTS VALUES ('A006', 'McDen', 'London', 0.15, '078-22255588', '');
INSERT INTO AGENTS VALUES ('A004', 'Ivan', 'Torento', 0.15, '008-22544166', '');
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');
select * from agents
select count(*) from agents
CREATE TABLE  "CUSTOMER" 
   (	"CUST_CODE" VARCHAR(6) NOT NULL PRIMARY KEY, 
	"CUST_NAME" VARCHAR(40) NOT NULL, 
	"CUST_CITY" CHAR(35), 
	"WORKING_AREA" VARCHAR(35) NOT NULL, 
	"CUST_COUNTRY" VARCHAR(20) NOT NULL, 
	"GRADE" int, 
	"OPENING_AMT" int NOT NULL, 
	"RECEIVE_AMT" int NOT NULL, 
	"PAYMENT_AMT" int NOT NULL, 
	"OUTSTANDING_AMT" int NOT NULL, 
	"PHONE_NO" VARCHAR(17) NOT NULL, 
	"AGENT_CODE" CHAR(6) NOT NULL REFERENCES AGENTS
);   
select * from Employee where salary between 10000 and 200000
select * from nobel_win
select full_name, year,category from nobel_win where year<1971 and category='physics' or year>1974 and category='peace'
select * from nobel_win where year<1971 and category='physiology' 
select * from nobel_win where full_name='Johannes Georg Bednorz'
select * from nobel_win where category not like 'p%' order by year Desc,full_name
select name,salary from Employee where salary=(select min(salary) from Employee)
