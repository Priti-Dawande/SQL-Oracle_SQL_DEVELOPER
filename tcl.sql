--TCL Commands
insert into exemp values (4, 'priya', '13-nov-2024',50000, 'Planning', 'priya@gmail.com');
commit;
select *  from exemp;
delete from exemp where eid=4;
rollback;