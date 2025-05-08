use company;
-- write a SQL query to compute the average price 
-- for unique companies. 
-- Return average price and company id.
select * from item_mast;

select avg(pro_price) as "AVG PRICE" , pro_com as "COMP ID"
from item_mast
group by pro_com;

--  write a SQL query to determine the highest
--  purchase amount made by each salesperson on '2012-08-17'. 
--  Return salesperson ID, purchase amount.
select salesman_id, max(purch_amt)
from orders
where ord_date='2012-08-17'
group by salesman_id;

use hr_db;

-- find those employees who recieve higher salary than the employee
-- whose emp_id is 163
select first_name,salary,job_id 
from employees
where salary > (
				select salary from employees
                where employee_id = 163 
);



select salary from employees
                where employee_id = 163 ;

-- write a SQL query to find out which employees have 
--  the same designation as the employee whose ID is 169. 
--  Return first name, last name, department ID and job ID.
select first_name, job_id
from employees
where job_id = (select job_id from employees
				where employee_id = 169);
-- write a SQL query to find those employees who earn
--  more than the average salary.
--  Return employee ID, first name, last name.
-- write a SQL query to find those employees whose 
-- salary matches the lowest salary of any of the departments. 
-- Return first name, last name and department ID.

select first_name, last_name, department_id 
from employees
where salary in (
select min(salary) from employees
group by department_id);

--  write a SQL query to find those employees 
--  who report to that manager whose first name is ‘Steven’. 
--  Return first name, last name, employee ID and salary.



show variables like "secure_file_priv";
load data local infile 'C\ProgramData\MySQL\MySQL Server 8.0\Uploads\cars.csv'
into table tables_name
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;
set  global local_infile = 1;