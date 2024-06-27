Create table Employeedetails (EMPID int, FullName Varchar(max), ManagerID int, City Varchar(max))
Create table Employeesalary (EMPID int, Project Varchar(max), Salary int, Variable int)

Select * from Employeedetails
Select * from Employeesalary

---Ques.1. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
---Sol.
Select EMPID, FullName from Employeedetails where ManagerID=986 

---Ques.2. Write an SQL query to fetch the different projects available from the EmployeeSalary table.
---Sol.
Select distinct(project) from Employeesalary

---Ques.3. Write an SQL query to fetch the count of employees working in project ‘P1’.
---Sol.
Select COUNT(EMPID) from Employeesalary where Project='P1'

---Ques.4. Write an SQL query to find the maximum, minimum, and average salary of the employees.
---Sol.
Select MAX(Salary), MIN(Salary), AVG(Salary) from Employeesalary

---Ques.5. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
---Sol.
Select EMPID, Salary from Employeesalary where Salary between 9000 and 15000

---Ques.6. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
---Sol.
Select EMPID, ManagerID, City from Employeedetails where City='Toronto'and ManagerID='321'

---Ques.7. Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
---Sol.
Select EMPID, ManagerID, City from Employeedetails where City='California' or ManagerID='321'

---Ques.8. Write an SQL query to fetch all those employees who work on Projects other than P1.
---Sol.
Select EMPID from Employeesalary where Project not in ('P1')

---Ques.9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
---Sol.
Select EMPID, Salary+Variable as 'Total Salary' from Employeesalary

---Ques.10. Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
---Sol.
Select EMPID from Employeedetails
Union
Select EMPID from Employeesalary
