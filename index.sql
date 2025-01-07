--index
--create index
create index myindex on exemp(eid,enm,esal);
--create unique index
select * from emp;
create unique index myindex2 on emp(empno,job);
--Rename an Index
ALTER INDEX myindex RENAME TO Priti_index;
--Drop an Index
drop index Priti_index;
--view index 
select * from myindex;