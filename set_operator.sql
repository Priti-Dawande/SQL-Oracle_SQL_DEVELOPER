--UNION: Combines the result sets of two queries and removes duplicate rows.
create table newexemp as select * from exemp;
select * from exemp union select * from newexemp;
--UNION ALL: Combines the result sets of two queries but does not remove duplicates.
select * from exemp union all select * from newexemp;
--INTERSECT: Returns only the rows that are common between the two result sets.
select * from exemp intersect select * from newexemp;
--MINUS: Returns rows from the first query that are not present in the second query.
select * from exemp minus select * from newexemp;