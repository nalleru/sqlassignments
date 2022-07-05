/* 1.Select employee details  of dept number 10 or 30*/
/*select * from emp_table
where emp_table.deptNo = 10 or 30*/

/* 2.Write a query to fetch all the dept details with more than 1 Employee*/
/*select deptNo, deptName, location
from dept_table
inner join emp_table
on dept_table.deptNo = emp_table.deptNo
group by deptNo
having count(*) > 1;*/

/* 3.Write a query to fetch employee details whose name starts with the letter “S”*/
/*select * from emp_table
where eName like 's%';*/

/* 4.Select Emp Details Whose experience is more than 2 years*/
/*select * from emp_table
where (sysdate()-hire_date)/365 > 2;*/

/*5. Write a SELECT statement to replace the char “a” with “#” in Employee Name*/
/*update emp_table 
set eName = replace(eName, 'a','#');
select * from emp_table;*/

/* 6. Write a query to fetch employee name and his/her manager name.*/
/*select 
emp_table.eName as "Employee",
m.eName as "Manager"
from emp_table 
left outer join emp_table m
on emp_table.manager = m.empNo;*/

/* 7.Fetch Dept Name , Total Salry of the Dept*/
/*select dept_table.deptName, result.total_amount
from dept_table,
(select emp_table.deptNo, sum(emp_table.salary) total_amount
from emp_table
group by deptNo) result
where result.deptNo = dept_table.deptNo;*/

/* 8.Write a query to fetch ALL the  employee details along with department name, department location, irrespective of employee existance in the department.*/
/*select emp_table.empNo, emp_table.eName, emp_table.salary, emp_table.hire_date, emp_table.commission, emp_table.manager, dept_table.deptNo, dept_table.deptName, dept_table.location
from emp_table, dept_table 
where emp_table.deptNo = dept_table.deptNo;*/

/* 9.Write an update statement to increase the employee salary by 10 % */
/*update emp_table
set salary = salary + (salary * 10/100);*/

/*10. Write a statement to delete employees belong to Chennai location.*/
/*delete from emp_table
where emp_table.deptNo = any(select dept_table.deptNo from dept_table
where dept_table.location = "Chennai");*/

/* 11. Get Employee Name and gross salary (sal + comission) .*/
/*select emp_table.eName as Employee , (emp_table.salary + emp_table.commission) as Grosssalary
from emp_table;*/

/* 12.Increase the data length of the column Ename of Emp table from  100 to 250 using ALTER statement*/
/*alter table emp_table
modify eName varchar (250);*/

/* 13.Write query to get current datetime*/
/*select sysdate()*/

/* 14.Write a statement to create STUDENT table, with related 5 columns*/
/*create table student (
student_id int not null,
student_name varchar(50),
student_age int,
course varchar(100),
address varchar(250));*/

/* 15.Write a query to fetch number of employees in who is getting salary more than 10000*/
/*select count(salary > 10000)
from emp_table;*/

/*16. Write a query to fetch minimum salary, maximum salary and average salary from emp table.*/
/*elect min(salary) as Minimumsalary, max(salary) as Maximumsalary, avg(salary) as Averagesalary
from emp_table;*/

/* 17.Write a query to fetch number of employees in each location*/
/*select dept_table.location, count(*) as NumberOfEmployees
from emp_table
inner join dept_table on emp_table.deptNo = dept_table.deptNo
group by dept_table.location;*/

/* 18.Write a query to display emplyee names in descending order*/
/*select eName from emp_table
order by eName desc;*/

/* 19. Write a statement to create a new table(EMP_BKP) from the existing EMP table */
/*create table emp_bkp
as (select * from emp_table
where empNo >1000);
select * from emp_bkp;*/

/* 20.  Write a query to fetch first 3 characters from employee name appended with salary.*/
/*alter table emp_table
modify column salary varchar(20);
update emp_table
set salary = concat(salary , substring(eName,1,3))
where empNo > 1000;
select * from emp_table;*/

/* 21.  Get the details of the employees whose name starts with S*/
/*select * from emp_table
where eName like 's%';*/

/* 22.  Get the details of the employees who works in Bangalore location*/
/*select * from emp_table
where emp_table.deptNo = any(select dept_table.deptNo from dept_table
where dept_table.location = "Bangalore");*/

/* 23. Write the query to get the employee details whose name started within  any letter between  A and K*/
/*select * from emp_table
where eName regexp '^[a-k].*$';*/

/* 24.  Write a query in SQL to display the employees whose manager name is Stefen*/
/*select emp_table.eName as Stefenemployees
from emp_table 
join emp_table m
on emp_table.manager = 1003;*/

/* 25.Write a query in SQL to list the name of the managers who is having maximum number of employees working under him*/
/*select m.eName, count(*)
from emp_table w, emp_table m
where w.manager = m.empNo
group by m.eName
having count(*) = (
select max(mycount)
from (
select count(*) mycount
from emp_table
group by manager) a);*/

/* 25.1.Write a query to display the employee details, department details and the manager details of the employee who has second highest salary*/
/*select * from emp_table, dept_table
where salary = (select salary
from emp_table
order by salary limit 2,1)
and emp_table.deptNo = dept_table.deptNo;*/

/* 25.2.Write a query to list all details of all the managers*/
/*select * from emp_table, dept_table
where empNo in (select manager from emp_table)
and emp_table.deptNo = dept_table.deptNo;*/

/* 25.3. Write a query to list the details and total experience of all the managers*/
/*select emp_table.empNo, emp_table.eName, emp_table.salary, emp_table.hire_date, emp_table.commission, emp_table.deptNo, emp_table.manager, datediff(sysdate(), hire_date)/365 as TotalExperience
from emp_table
where empNo in (select manager from emp_table);*/

/* 25.4.Write a query to list the employees who is manager and  takes commission less than 1000 and works in Delhi*/
/*select emp_table.eName from emp_table
where commission < 1000 and empNo in (select manager from emp_table) 
and deptNo = any(select dept_table.deptNo from dept_table where dept_table.location = "Delhi");*/

/* 25.5.Write a query to display the details of employees who are senior to Martin */
/*select * from emp_table
where hire_date < (select hire_date from emp_table where eName = "M#rtin");*/










