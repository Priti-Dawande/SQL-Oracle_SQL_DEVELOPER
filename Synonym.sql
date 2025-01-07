--Create a synonym:
--create public synonym
create public synonym priti_emp for XXACSE.exemp;
--create private synonym
create synonym priti_emp for job.exemp;
--Using Synonyms: Synonyms are transparent. Once a synonym is created, you use it as if it were the actual object.
select * from priti_emp where eid = 4;
--Grant access to the table:
GRANT ALL ON exemp TO XXACSE;
--Checking Synonyms in the Database
--For private synonyms:
SELECT * FROM priti_emp;
--For public synonyms:
SELECT * FROM priti_emp WHERE owner = 'PUBLIC';
--For synonyms in any schema:
SELECT * FROM all_synonyms;






CREATE SYNONYM offices FOR XXACSE.EXEMP;
