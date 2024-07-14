Create table Department (DEPARTMENT_ID int, DEPARTMENT_NAME varchar(max), MANAGER_ID int, LOCATION_ID int)
Create table Employee (EMPLOYEE_ID int, FIRST_NAME varchar(max), LAST_NAME varchar(max), EMAIL varchar(max), PHONE_NUMBER int,
HIRE_DATE datetime, JOB_ID varchar(max), SALARY int, COMMISSION_PCT int, MANAGER_ID int, DEPARTMENT_ID int)
Create table Location (LOCATION_ID int, STREET_ADDRESS varchar(max), POSTAL_CODE varchar(max), CITY varchar(max), STATE_PROVINCE 
varchar(max), COUNTRY_ID varchar(max))
Create table Job_Grade (GRADE_LEVEL varchar(max), LOWEST_SAL int, HIGHEST_SAL int)

Select * from Department
Select * from Employee
Select * from Location
Select * from Job_Grade

---1- write a SQL query to find the first name, last name, department number, and department name for each employee.

Select Employee.FIRST_NAME,Employee.LAST_NAME,Employee.DEPARTMENT_ID,Department.DEPARTMENT_NAME from Employee join Department on
Employee.DEPARTMENT_ID=Department.DEPARTMENT_ID

---2- write a SQL query to find the first name, last name, department, city, and state province for each employee.

Select Employee.FIRST_NAME,Employee.LAST_NAME,Department.DEPARTMENT_NAME as Department,Location.CITY,Location.STATE_PROVINCE from 
Employee join Department on Employee.DEPARTMENT_ID=Department.DEPARTMENT_ID join Location on 
Department.LOCATION_ID=Location.LOCATION_ID

---3- write a SQL query to find the first name, last name, salary, and job grade for all employees.

Select Employee.FIRST_NAME,Employee.LAST_NAME,Employee.SALARY,Job_Grade.GRADE_LEVEL as Job_Grade from Employee join
(Select Grade_Level,Lowest_Sal,Highest_Sal from Job_Grade) Job_Grade on Employee.SALARY between Job_Grade.LOWEST_SAL and 
Job_Grade.HIGHEST_SAL

---4- write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department 
------number and department name.

Select Employee.FIRST_NAME,Employee.LAST_NAME,Employee.DEPARTMENT_ID,Department.DEPARTMENT_NAME from Employee join Department on 
Employee.DEPARTMENT_ID=Department.DEPARTMENT_ID where Employee.DEPARTMENT_ID in (40,80)
