select * from exemp;
select * from emp;
select lower(ename)from emp where empno=7839;
select upper('priti')from dual;
select initcap('priti')from dual;
select substr('oracledatabase',1,6)from dual;
SELECT LENGTH('Oracle') AS string_length FROM dual;
SELECT CONCAT('Hello', ' World') AS concatenated FROM dual;
SELECT lpad('SQL Tutorial', 20, '*')FROM dual;
SELECT rpad('Hello',10,'$')FROM dual;
SELECT LTRIM('0000000Priti',0)from dual;
SELECT RTRIM('Priti00000000',0)from dual;
--Numeric Functions
SELECT ROUND(123.456, 2) AS rounded FROM dual;
SELECT TRUNC(123.456, 2) AS truncated FROM dual;
SELECT MOD(10, 3) AS remainder FROM dual;
--Date Functions
SELECT SYSDATE AS current_date FROM dual;
SELECT ADD_MONTHS(SYSDATE, 2) AS new_date FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2025-05-08', 'YYYY-MM-DD'), SYSDATE) AS months_diff FROM dual;
SELECT NEXT_DAY(SYSDATE, 'SUNDAY') AS next_sunday FROM dual;
SELECT LAST_DAY(SYSDATE) AS month_end FROM dual;
--Conversion Functions
SELECT TO_DATE('2025-01-08', 'YYYY-MM-DD') AS date_value FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') AS formatted_date FROM dual;
SELECT TO_NUMBER('123.45') AS number_value FROM dual;
--Null-Handling Functions
SELECT NVL(NULL, 'Default') AS result FROM dual;
SELECT NVL2(NULL, 'Not Null', 'Is Null') AS result FROM dual;
SELECT COALESCE(NULL, NULL, 'First Non-Null') AS result FROM dual;
--Aggregate Functions
SELECT COUNT(*) AS total_rows FROM exemp;
SELECT SUM(esal) AS total_salary FROM exemp;
SELECT AVG(esal) AS average_salary FROM exemp;
SELECT MAX(esal) AS max_salary FROM exemp;
SELECT MIN(esal) AS min_salary FROM exemp;
--SELECT employee_id, ROW_NUMBER() OVER (ORDER BY hire_date) AS row_num FROM employees;
--Analytical Functions
--These functions provide insights across rows within a result set.
--ROW_NUMBER(): Assigns a unique number to each row.
SELECT eid,ROW_NUMBER()OVER (ORDER BY esal asc) AS row_num FROM exemp;
--RANK(): Assigns a rank to rows based on a specific column.
SELECT eid, RANK() OVER (ORDER BY esal DESC) AS rank FROM exemp;
SELECT esal,eid, RANK() OVER (partition by esal order by esal) AS rank FROM exemp;
--NTILE(): Divides rows into a specified number of groups.
SELECT eid, NTILE(4) OVER (ORDER BY esal) AS quartile FROM exemp;