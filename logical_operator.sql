--logical operator
--and,or,not,between,like,in
select * from exemp;
select * from exemp where enm='prisha' and eid=5;
select * from exemp where enm='prisha' or eid=5;
select * from exemp where enm='prisha' or eid=4;
select * from exemp where not eid=5;
select * from exemp where eid between 1 and 3;
select * from exemp where enm like 'p%';
select * from exemp where enm like 'p____';
select * from exemp where eid in(1,3);
select * from exemp where enm in('priti','prisha','Shiv');
