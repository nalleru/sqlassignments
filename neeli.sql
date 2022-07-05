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





