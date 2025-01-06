--DML commands
desc exemp;
insert into exemp values(1,'priti','11-nov-2024',20000,'Techical','kulkarni.prity@gmail.com');
insert into exemp values(2,'Shiv','12-nov-2024',30000,'Financial','shiv@gmail.com');
INSERT ALL
    INTO exemp (eid, enm, edoj, esal,desg, email) VALUES (3, 'Anil', '12-nov-2024', 40000,'DBA', 'anil@gmail.com')
    INTO exemp (eid, enm, edoj, esal,desg, email) VALUES (4, 'priya', '13-nov-2024',50000, 'Planning', 'priya@gmail.com')
    INTO exemp (eid, enm, edoj, esal,desg, email) VALUES (5, 'prisha', '14-nov-2024',60000, 'Functional', 'prisha@gmail.com')
SELECT * FROM dual;
select * from exemp;
update exemp set enm='pooja' where eid=4;
update exemp set enm='pooja',esal=48000 where eid=4;
delete from exemp where enm='pooja';
