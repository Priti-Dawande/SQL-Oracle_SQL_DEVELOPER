--clauses 
--select 
select * from exemp;
--where clause
select * from exemp where enm='prisha' and eid=5;
--group by clause
select count(eid),email,enm from exemp group by enm,email;
--without function
select email,enm from exemp group by email,enm;
--having clause
select count(eid),enm from exemp group by enm having max(esal)>=40000 ;
select * from exemp order by eid;
--by default its ascending
select * from exemp order by eid asc;
--having clause by decending 
select * from exemp order by eid desc;
