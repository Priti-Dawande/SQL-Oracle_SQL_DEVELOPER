--join
create table mydept(did int,dname varchar2(20),city varchar2(20));
create table myyemp(empno int,ename varchar2(20),desg varchar2(30),did int);
insert into mydept values(1,'sales','pune');
insert into mydept values(2,'finance','mumbai');
insert into mydept values(3,'hr','nagpur');
insert into myyemp values(1,'priti','technical',1);
insert into myyemp values(2,'mohini','functional',2);
insert into myyemp values(3,'rajat','dba',3);
insert into myyemp values(4,'mohini','technical',4);
select * from mydept;
select * from myyemp;
--joins by using + right
select * from mydept,myyemp where mydept.did(+)=myyemp.did;
--joins by using + left
select * from mydept,myyemp where mydept.did=myyemp.did(+);
--equi join
select dname,city,ename,desg from mydept,myyemp where mydept.did=myyemp.did;
--non-equi join
select dname,city,ename,desg from mydept,myyemp where mydept.did>myyemp.did;
--natural join
select dname,city,ename,desg from mydept natural join myyemp;
--inner join
select dname,city,ename,desg from mydept inner join myyemp on mydept.did=myyemp.did;
--cross join
select dname,city,ename,desg from mydept cross join myyemp;
--left outer join
select dname,city,ename,desg from mydept left outer join myyemp on mydept.did=myyemp.did;
--right outer join
select dname,city,ename,desg from mydept right outer join myyemp on mydept.did=myyemp.did;
--full outer join
select dname,city,ename,desg from mydept full outer join myyemp on mydept.did=myyemp.did;
--self join
select p1.dname,p1.city,p2.ename,p2.desg from mydept p1,myyemp p2 where p1.did=p2.did;
