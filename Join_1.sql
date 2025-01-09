select * from orders;
select * from customers;
desc orders;
desc customers;
select order_datetime,order_status,full_name,email_address from orders,customers 
    where orders.customer_id=customers.customer_id;
select * from emp;
desc emp;
select * from dept;
--left outer join
select e.empno,e.ename,e.sal,d.dname,d.loc from emp e,dept d where e.deptno=d.deptno(+);
--right outer join
select e.empno,e.ename,e.sal,d.dname,d.loc from emp e,dept d where e.deptno(+)=d.deptno;
--
select e.empno,e.ename,e.sal,d.dname,d.loc from emp e,dept d where e.deptno=d.deptno(+)
    union
select e.empno,e.ename,e.sal,d.dname,d.loc from emp e,dept d where e.deptno(+)=d.deptno;