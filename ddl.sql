--DDL  Commands
create table exemp (eid number(4),enm varchar2(30),edoj date,esal number(5),desg varchar2(30));
alter table exemp add(email varchar2(15));
create table newexemp as select * from exemp;
desc newexemp;
truncate table newexemp;
drop table newexemp;