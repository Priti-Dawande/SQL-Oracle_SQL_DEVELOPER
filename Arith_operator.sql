--Arithmatic Operator
select * from exemp;
select eid,enm,esal,esal+1000 as " Bonus+1000 " from exemp;
select eid,enm,esal,esal-1000 as " Expenses-1000 " from exemp;
select eid,enm,esal,esal*7/100 as " Variable pay*2/100 " from exemp;
select eid,enm,esal,esal/15 as " Expenses/15 " from exemp;
SELECT eid, enm, esal, MOD(esal, 50) AS "Mod by 50" FROM exemp;