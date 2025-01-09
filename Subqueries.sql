--subquery:query within query
create table db (nm varchar2(30),rno int,loc varchar2(30),phno number(7));
create table stud_db(nm varchar2(30),rno int,sce varchar2(2));
insert into db values('&nm','&rno','&loc','&phno');
insert into stud_db values('&nm','&rno','&sce');
select * from db;
select * from stud_db;
--Fetching Data Using Subquery
select nm, loc, phno FROM db WHERE rno IN (SELECT rno FROM stud_db WHERE sce='A');
--Using Subquery with INSERT
create table stud_db1 as select * from stud_db;
insert into stud_db1 select * from stud_db;
--Using Subquery with DELETE
DELETE FROM stud_db1 WHERE rno IN (SELECT rno FROM db WHERE loc = 'mumbai');
--Using Subquery with UPDATE
UPDATE db SET nm='Pranjal' WHERE rno IN (SELECT rno FROM stud_db WHERE nm='priya');