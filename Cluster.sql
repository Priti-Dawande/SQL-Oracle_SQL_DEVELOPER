--cluster
--step 1 create cluster
create cluster c1(d number(2));
--step 2 create index on cluster
create index ci1 on cluster c1;
--step 3 create tables on cluster & index
create table dept007 (dno number(2),dname varchar2(20)) cluster c1(dno);
create table emp007 (empno number(4),ename varchar2(20),dno number(2)) cluster c1(dno);
--insert values in the tables
insert into dept007 values(10,'acct');
insert into dept007 values(20,'research');
insert into emp007 values(1,'A',10);
insert into emp007 values(2,'B',20);
--to check cluster working use rowid is same 
select rowid,dno,dname from dept007;
select rowid,empno,ename,dno from emp007;