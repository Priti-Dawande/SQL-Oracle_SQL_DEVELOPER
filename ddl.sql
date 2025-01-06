--DDL  Commands
--how to Create,alter(add,modify),truncate,delete Table
create table exemp (eid number(4),enm varchar2(30),edoj date,esal number(5),desg varchar2(30));
alter table exemp add(email varchar2(15));
alter table exemp modify(email varchar2(40));
create table newexemp as select * from exemp;
desc newexemp;
truncate table newexemp;
drop table newexemp;
