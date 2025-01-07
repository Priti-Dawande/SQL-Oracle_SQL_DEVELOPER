--Additional Operators
select * from exemp;
select eid,enm,esal from exemp where esal between 50000 and 90000;
select eid,enm,esal from exemp where esal not between 50000 and 90000;
select eid,enm,esal from exemp where desg in ('DBA','Planning');
select eid,enm,esal from exemp where desg not in ('DBA','Planning');
select eid,enm,esal from exemp where enm like 'p%';
select eid,enm,esal from exemp where enm not like 'p%';
select eid,enm,esal from exemp where eid is null;
select eid,enm,esal from exemp where eid is not null;