--keys 
--Primary key
create table mystud (rno INT PRIMARY KEY, snm VARCHAR(50));
--foreign key
create table myenroll(enrollid int PRIMARY KEY,rno int,CourseID int,FOREIGN KEY (rno) REFERENCES mystud(rno));
--Composite Key
--A composite key is a primary key made up of two or more columns.
CREATE TABLE myorders(OrderID INT,ProductID INT,Quantity INT,PRIMARY KEY (OrderID, ProductID));
--Unique Key
--A unique key ensures that all values in a column or combination of columns are unique.
--Unlike the primary key, a unique key allows NULL values (depending on the database).
desc exemp;
alter table exemp modify email unique;
