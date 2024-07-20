Create table Regions (Region_Id int,Region_Name varchar(max))
Create table Countries (Country_Id varchar(max),Country_Name varchar(max),Region_Id int)
Create table Locations (Location_Id int,Street_Address varchar(max),Postal_Code varchar(max),City varchar(max),State_Province
varchar(max),Country_Id varchar(max))
Create table Jobs (Job_Id int,Job_Title varchar(max),Min_Salary decimal(8,2),Max_Salary decimal(8,2))
Create table Departments (Department_Id int,Department_Name varchar(max),Location_Id int)
Create table Employees (Employee_Id int,First_Name varchar(max),Last_Name varchar(max),Email varchar(max),Phone_Number varchar(max),
Hire_Date date,Job_Id int,Salary decimal(8,2),Manager_Id int,Department_Id int)
Create table Dependents (Dependent_Id int,First_Name varchar(max),Last_Name varchar(max),Relationship varchar(max),Employee_Id int)

Select * from Regions
Select * from Countries
Select * from Locations
Select * from Jobs
Select * from Departments
Select * from Employees
Select * from Dependents

Insert into Regions(Region_Id,Region_Name) values (1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'Middle East and Africa')
Insert into Countries(Country_Id,Country_Name,Region_Id) values ('AR','Argentina',2),('AU','Australia',3),('BE','Belgium',1),
('BR','Brazil',2),('CA','Canada',2),('CH','Switzerland',1),('CN','China',3),('DE','Germany',1),('DK','Denmark',1),('EG','Egypt',4),
('FR','France',1),('HK','HongKong',3),('IL','Israel',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),('KW','Kuwait',4),
('MX','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),('UK','United Kingdom',1),
('US','United States of America',2),('ZM','Zambia',4),('ZW','Zimbabwe',4)
Insert into Locations(Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) values (1400,'2014 Jabberwocky Rd',
'26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1700,
'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),
(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE')
Insert into Jobs(Job_Id,Job_Title,Min_Salary,Max_Salary) values (1,'Public Accountant',4200.00,9000.00),(2,'Accounting Manager',
8200.00,16000.00),(3,'Administration Assistant',3000.00,6000.00),(4,'President',20000.00,40000.00),
(5,'Administration Vice President',15000.00,30000.00),(6,'Accountant',4200.00,9000.00),(7,'Finance Manager',8200.00,16000.00),
(8,'Human Resources Representative',4000.00,9000.00),(9,'Programmer',4000.00,10000.00),(10,'Marketing Manager',9000.00,15000.00),
(11,'Marketing Representative',4000.00,9000.00),(12,'Public Relations Representative',4500.00,10500.00),(13,'Purchasing Clerk',
2500.00,5500.00),(14,'Purchasing Manager',8000.00,15000.00),(15,'Sales Manager',10000.00,20000.00),(16,'Sales Representative',
6000.00,12000.00),(17,'Shipping Clerk',2500.00,5500.00),(18,'Stock Clerk',2000.00,5000.00),(19,'Stock Manager',5500.00,8500.00)
Insert into Departments(Department_Id,Department_Name,Location_Id) values (1,'Administration',1700),(2,'Marketing',1800),
(3,'Purchasing',1700),(4,'Human Resources',2400),(5,'Shipping',1500),(6,'IT',1400),(7,'Public Relations',2700),(8,'Sales',2500),
(9,'Executive',1700),(10,'Finance',1700),(11,'Accounting',1700)
Insert into Employees(Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Manager_Id,Department_Id) values 
(100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9),
(102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9),
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6),
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6),
(105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6),
(106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6),
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6),
(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10),
(109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10),
(112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10),
(113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10),
(114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3),
(115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3),
(116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3),
(117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3),
(118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3),
(119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,2500.00,114,3),
(120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5),
(121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5),
(122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5),
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5),
(126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5),
(145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8),
(146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8),
(176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8),
(177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8),
(178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8),
(179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8),
(192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5),
(193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5),
(200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1),
(201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2),
(202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2),
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4),
(204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7),
(205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11),
(206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11)
Insert into Dependents(Dependent_Id,First_Name,Last_Name,Relationship,Employee_Id) values (1,'Penelope','Gietz','Child',206),
(2,'Nick','Higgins','Child',205),(3,'Ed','Whalen','Child',200),(4,'Jennifer','King','Child',100),(5,'Johnny','Kochhar','Child',101),
(6,'Bette','De Haan','Child',102),(7,'Grace','Faviet','Child',109),(8,'Matthew','Chen','Child',110),(9,'Joe','Sciarra','Child',111),
(10,'Christian','Urman','Child',112),(11,'Zero','Popp','Child',113),(12,'Karl','Greenberg','Child',108),(13,'Uma','Mavris','Child',
203),(14,'Vivien','Hunold','Child',103),(15,'Cuba','Ernst','Child',104),(16,'Fred','Austin','Child',105),(17,'Helen','Pataballa',
'Child',106),(18,'Dan','Lorentz','Child',107),(19,'Bob','Hartstein','Child',201),(20,'Lucille','Fay','Child',202),
(21,'Kirsten','Baer','Child',204),(22,'Elvis','Khoo','Child',115),(23,'Sandra','Baida','Child',116),(24,'Cameron','Tobias','Child',
117),(25,'Kevin','Himuro','Child',118),(26,'Rip','Colmenares','Child',119),(27,'Julia','Raphaely','Child',114),
(28,'Woody','Russell','Child',145),(29,'Alec','Partners','Child',146),(30,'Sandra','Taylor','Child',176)

---TASK 1
---1) A. To get data from all the rows and columns in the employees table
---ANS:
Select * from Employees
---B. Select data from the employee id, first name, last name, and hire date of all rows in the employees table
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date from Employees
---C. To get the first name, last name, salary, and new salary
---ANS:
Select First_Name,Last_Name,Salary,Salary * 1.1 as New_Salary from Employees
---D. Increase the salary two times and named as New_SALARY from employees table
---ANS:
Select First_Name,Salary,Salary * 2 as New_Salary from Employees
---2) A. Returns the data from the employee id, first name, last name, hire date, and salary column of the employees table
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees 
---B. To sort employees by first names in alphabetical order
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees order by First_Name
---C. To sort the employees by the first name in ascending order and the last name in descending order
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees order by First_Name asc,Last_Name desc
---D. To sort employees by salary from high to low
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees order by Salary desc
---E. To sort the employees by values in the hire_date column from
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees order by Hire_Date
---F. Sort the employees by the hire dates in descending order
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date,Salary from Employees order by Hire_Date desc 
---3) A. Selects the salary data from the salary column of the employees table and sorts them from high to low
---ANS:
Select Salary from Employees order by Salary desc
---B. Select unique values from the salary column of the employees table
---ANS:
Select distinct Salary from Employees 
---C. Selects the job id and salary from the employees table
---ANS:
Select Job_Id,Salary from Employees
---D. To remove the duplicate values in job id and salary
---ANS:
Select distinct Job_Id,Salary from Employees
---E. Returns the distinct phone numbers of employees
---ANS:
Select distinct Phone_Number from Employees
---4) A. Returns all rows in the employees table sorted by the first_name column
---ANS:
Select * from Employees order by First_Name
---B. To return the first 5 rows in the result set returned by the SELECT clause
---ANS:
Select top 5 * from Employees order by Employee_Id
---C. To return five rows starting from the 4th row
---ANS:
Select top 5 * from Employees order by Employee_Id offset 3 rows
---D. Gets the top five employees with the highest salaries
---ANS:
Select top 5 * from Employees order by Salary desc
---E. To get employees who have the 2nd highest salary in the company
---ANS:
Select top 1 * from Employees where Salary= (Select distinct Salary from Employees order by Salary desc offset 1)
---5) A. Query finds employees who have salaries greater than 14,000 and sorts the results sets based on the salary in descending 
---order
---ANS:
Select First_Name,Last_Name,Salary from Employees where Salary>14000 order by Salary desc
---B. Query finds all employees who work in the department id 5
---ANS:
Select Employee_Id,First_Name,Last_Name,Department_Id from Employees where Department_Id=5
---C. Query finds the employee whose last name is Chen
---ANS:
Select Employee_Id,First_Name,Last_Name from Employees where Last_Name='Chen'
---D. To get all employees who joined the company after January 1st, 1999
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date from Employees where Hire_Date>'1999-01-01'
---E. To find the employees who joined the company in 1999
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date from Employees where Year(Hire_Date)='1999'
---F. Statement finds the employee whose last name is Himuro
---ANS:
Select Employee_Id,First_Name,Last_Name from Employees where Last_Name='Himuro'
---G. The query searches for the string Himuro in the last_name column of the employees table
---ANS:
Select Employee_Id,First_Name,Last_Name from Employees where Last_Name='Himuro'
---H. To find all employees who do not have phone numbers
---ANS:
Select Employee_Id,First_Name,Last_Name,Email,Phone_Number from Employees where Phone_Number is null
---I. Returns all employees whose department id is not 8
---ANS:
Select Employee_Id,First_Name,Last_Name,Department_Id from Employees where Department_Id<>8
---J. Finds all employees whose department id is not eight and ten
---ANS:
Select Employee_Id,First_Name,Last_Name,Department_Id from Employees where Department_Id not in (8,10)
---K. To find the employees whose salary is greater than 10,000
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary from Employees where Salary>10000
---L. Finds employees in department 8 and have the salary greater than 10,000
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary,Department_Id from Employees where Department_Id=8 and Salary>10000
---M. The statement below returns all employees whose salaries are less than 10,000
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary from Employees where Salary<10000
---N. Finds employees whose salaries are greater than or equal 9,000
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary from Employees where Salary>=9000
---O. Finds employees whose salaries are less than or equal to 9,000
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary from Employees where Salary<=9000
---6) A. Adds a new column named credit_hours to the courses table
---ANS:
Create table Courses (Course_Id int,Course_Name varchar(max))
Select * from Courses
Alter table Courses add Credit_Hours int
---B. Adds the fee and max_limit columns to the courses table and places these columns after the course_name column
---ANS:
Alter table Courses add Fee int,Max_Limit int
---C. Changes the attribute of the fee column to NOT NULL
---ANS:
Alter table Courses modify Fee int not null
---D. To remove the fee column of the courses table
---ANS:
Alter table Courses drop column fee
---E. Removes the max_limit and credit_hours of the courses table
---ANS:
Alter table Courses drop column Max_Limit,Credit_Hours
---7) A. To add an SQL FOREIGN KEY constraint to the project_milestones table to enforce the relationship between the projects and 
---project_milestones tables
---ANS:
Create table Projects(Project_Id int primary key,Project_Name varchar(max),Start_Date date not null,End_Date date not null)
Create table Project_Milestones(Milestone_Id int primary key,Project_Id int,Milestone_Name varchar(max))
Select * from Projects
Select * from Project_Milestones
Alter table Project_Milestones add constraint Fk_Project_Milestones_Project_Id foreign key (Project_Id) references 
Projects(Project_Id) on delete cascade
---B. Suppose the project_milestones already exists without any predefined foreign key and you want to define a FOREIGN KEY 
---constraint for the project_id column so write a Query to add a FOREIGN KEY constraint to existing table
---ANS:
Alter table Project_Milestones add constraint Fk_Project_Milestones_Project_Id foreign key(Project_Id) references 
Projects(Project_Id) on delete cascade

---TASK 2
---1) A. Finds all employees whose salaries are greater than 5,000 and less than 7,000
---ANS:
Select * from Employees where Salary>5000 and Salary<7000
---B. Finds employees whose salary is either 7,000 or 8,000
---ANS:
Select * from Employees where Salary IN (7000,8000)
---C. Finds all employees who do not have a phone number
---ANS:
Select * from Employees where Phone_Number is null
---D. Finds all employees whose salaries are between 9,000 and 12,000
---ANS:
Select * from Employees where Salary between 9000 and 12000
---E. Finds all employees who work in the department id 8 or 9
---ANS:
Select * from Employees where Department_Id IN (8,9)
---F. Finds all employees whose first name starts with the string jo
---ANS:
Select * from Employees where First_Name like 'jo%'
---G. Finds all employees with the first names whose the second character is h
---ANS:
Select * from Employees where Substring(First_Name,2,1)='h'
---H. Finds all employees whose salaries are greater than all salaries of employees in the department 8
---ANS:
Select * from Employees where Salary>all(Select Salary from Employees where Department_Id=8)
---2) A. Finds all employees whose salaries are greater than the average salary of every department
---ANS:
Select * from Employees where Salary>all(Select AVG(Salary) from Employees group by Department_Id)
---B. Finds all employees who have dependents
---ANS:
Select * from Employees where exists(Select 1 from Dependents where Dependents.Employee_Id=Employees.Employee_Id)
---C. To find all employees whose salaries are between 2,500 and 2,900
---ANS:
Select * from Employees where Salary between 2500 and 2900
---D. To find all employees whose salaries are not in the range of 2,500 and 2,900
---ANS:
Select * from Employees where Salary<2500 or Salary>2900
---E. To find all employees who joined the company between January 1, 1999, and December 31, 2000
---ANS:
Select * from Employees where Hire_Date between '1999-01-01' and '2000-12-31'
---F. To find employees who have not joined the company from January 1, 1989 to December 31, 1999
---ANS:
Select * from Employees where Hire_Date<'1989-01-01' or Hire_Date>'1999-12-31'
---G. To find employees who joined the company between 1990 and 1993
---ANS:
Select * from Employees where Year(Hire_Date) between 1990 and 1993
---3) A. To find all employees whose first names start with Da
---ANS:
Select * from Employees where First_Name like 'Da%'
---B. To find all employees whose first names end with er
---ANS:
Select * from Employees where First_Name like '%er'
---C. To find employees whose last names contain the word an
---ANS:
Select * from Employees where Last_Name like '%an%'
---D. Retrieves employees whose first names start with Jo and are followed by at most 2 characters
---ANS:
Select * from Employees where First_Name like 'Jo__'
---E. To find employees whose first names start with any number of characters and are followed by at most one character
---ANS:
Select * from Employees where First_Name like '_%' and First_Name not like '__%'
---F. To find all employees whose first names start with the letter S but not start with Sh
---ANS:
Select * from Employees where First_Name like 'S%' and First_Name not like 'Sh%'
---4) A. Retrieves all employees who work in the department id 5
---ANS:
Select * from Employees where Department_Id=5
---B. To get the employees who work in the department id 5 and with a salary not greater than 5000
---ANS:
Select * from Employees where Department_Id=5 and Salary<=5000
---C. Statement gets all the employees who are not working in the departments 1, 2, or 3
---ANS:
Select * from Employees where Department_Id not in (1,2,3)
---D. Retrieves all the employees whose first names do not start with the letter D
---ANS:
Select * from Employees where First_Name not like 'D%'
---E. To get employees whose salaries are not between 5,000 and 1,000
---ANS:
Select * from Employees where Salary not between 1000 and 5000
---5) A. Write a query to get the employees who do not have any dependents by above image
---ANS:
Select Employees.Employee_Id,Employees.First_Name,Employees.Last_Name,Dependents.Dependent_Id from Employees left join Dependents on 
Employees.Employee_Id=Dependents.Employee_Id where Dependents.Dependent_Id is null
---B. To find all employees who do not have the phone numbers
---ANS:
Select * from Employees where Phone_Number is null
---C. To find all employees who have phone numbers
---ANS:
Select * from Employees where Phone_Number is not null

---TASK 3
---1) A. To get the information of the department id 1,2, and 3
---ANS:
Select Departments.Department_Id,Departments.Department_Name,Employees.Employee_Id,Employees.First_Name from Departments inner join 
Employees on Departments.Department_Id=Employees.Department_Id where Departments.Department_Id in (1,2,3)
---B. To get the information of employees who work in the department id 1, 2 and 3
---ANS:
Select Employees.* from Employees join Departments on Employees.Department_Id=Departments.Department_Id where 
Departments.Department_Id in (1,2,3)
---Write a Query to get the first name, last name, job title, and department name of employees who work in department id 1, 2, and 3
---ANS:
Select Employees.First_Name,Employees.Last_Name,Jobs.Job_Title,Departments.Department_Name from Employees join Jobs on 
Employees.Job_Id=Jobs.Job_Id join Departments on Employees.Department_Id=Departments.Department_Id where Employees.Department_Id in 
(1,2,3)
---A. To query the country names of US, UK, and China
---ANS:
Select Countries.Country_Name from Countries left join Locations on Countries.Country_Id=Locations.Country_Id where 
Countries.Country_Name in ('US','UK','China')
---B. Query retrieves the locations located in the US, UK and China
---ANS:
Select Locations.State_Province,Countries.Country_Name from Locations join Countries on Locations.Country_Id=Countries.Country_Id
where Countries.Country_Name in ('US','UK','China')
---C. To join the countries table with the locations table
---ANS:
Select Locations.Location_Id,Locations.City,Countries.Country_Name from Locations join Countries on 
Locations.Country_Id=Countries.Country_Id
---D. To find the country that does not have any locations in the locations table
---ANS:
Select Countries.Country_Id,Countries.Country_Name from Countries left join Locations on Countries.Country_Id=Locations.Country_Id
where Locations.Location_Id is null
---Write a query to join 3 tables: regions, countries, and locations
---ANS:
Select Regions.Region_Id,Regions.Region_Name,Countries.Country_Id,Countries.Country_Name,Locations.Location_Id,
Locations.Street_Address,Locations.Postal_Code,Locations.City,Locations.State_Province,Locations.Country_Id from Regions join 
Countries on Regions.Region_Id=Countries.Region_Id left join Locations on Countries.Country_Id=Locations.Country_Id
---The manager_id column specifies the manager of an employee. Write a query  statement to  joins the employees table to itself to 
---query the information of who reports to whom
---ANS:
Select e.Employee_Id as Employee_Id,e.First_Name as Employee_First_Name,e.Last_Name as Employee_Last_name,e.Manager_Id as Manager_Id,
m.First_Name as Manager_First_Name,m.Last_name as Manager_Last_name from Employees e inner join Employees m on 
e.Manager_Id=m.Employee_Id order by e.Employee_Id
---The president does not have any manager. In the employees table, the manager_id of the row that contains the president is NULL
---Because the inner join clause only includes the rows that have matching rows in the other table, therefore the president did not 
---show up in the result set of the query above. Now write a Query To include the president in the result set
---ANS:
Select e.Employee_Id as Employee_Id,e.First_Name as Employee_First_Name,e.Last_Name as Employee_Last_name,e.Manager_Id as Manager_Id,
m.First_Name as Manager_First_Name,m.Last_name as Manager_Last_name from Employees e left join Employees m on e.Manager_Id=
m.Employee_Id order by e.Employee_Id
---A. Write a query to returns each fruit that is in a basket and each basket that has a fruit, but also returns each fruit that is 
---not in any basket and each basket that does not have any fruit
---ANS:
Create table Fruits(Fruit_Id int,Fruit_Name varchar(max),Basket_Id int)
Create table Baskets(Basket_Id int,Basket_Name varchar(max))
Insert into Baskets(Basket_Id,Basket_Name) values (1,'A'),(2,'B'),(3,'C')
Insert into Fruits(Fruit_Id,Fruit_Name,Basket_Id) values (1,'APPLE',1),(2,'ORANGE',1),(3,'BANANA',2),(4,'STRAWBERRY',NULL)
Select * from Fruits
Select * from Baskets
Select Fruits.Fruit_Id,Fruits.Fruit_Name,Baskets.Basket_Id from Fruits left join Baskets on Fruits.Basket_Id=Baskets.Basket_Id union 
Select Fruits.Fruit_Id,Fruits.Fruit_Name, null as Basket_Id from Fruits where Fruits.Basket_Id is null union Select null as Fruit_Id,
null as Fruit_Name,Baskets.Basket_Id from Baskets where not exists (Select 1 from Fruits where Fruits.Basket_Id=Baskets.Basket_Id) 
order by Fruit_Id,Basket_Id
---B. Write a query to find the empty basket, which does not store any fruit
---ANS:
Select Baskets.Basket_Id,Baskets.Basket_Name from Baskets where not exists (Select 1 from Fruits where Fruits.Basket_Id=Baskets.
Basket_Id)
---C. Write a query which fruit is not in any basket
---ANS:
Select Fruits.Fruit_Id,Fruits.Fruit_Name from Fruits where not exists (Select 1 from Baskets where Baskets.Basket_Id=Fruits.Basket_Id)
---Write a Query To find the all possible sales channels that a sales organization
Create table Sales_Organization(Sales_Org_Id int,Sales_Org varchar(max))
Create table Sales_Channel(Channel_id int,Channel varchar(max))
Insert into Sales_Organization(Sales_Org_Id,Sales_Org) values (1,'Domestic'),(2,'Export')
Insert into Sales_Channel(Channel_id,Channel) values (1,'Wholesale'),(2,'Retail'),(3,'Ecommerce'),(4,'TVshopping')
Select * from Sales_Channel
Select * from Sales_Organization
Select Sales_Organization.Sales_Org_Id,Sales_Organization.Sales_Org,Sales_Channel.Channel_id,Sales_Channel.Channel from 
Sales_Organization cross join Sales_Channel

---TASK 4
---1) A. To group the values in department_id column of the employees table
---ANS:
Select Department_Id,COUNT(*) as Employee_Count from Employees group by Department_Id
---B. To count the number of employees by department
---ANS:
Select Department_Id,COUNT(*) as Employee_Count from Employees group by Department_Id order by Department_Id
---C. Returns the number of employees by department
---ANS:
Select Department_Id,COUNT(*) as Employee_Count from Employees group by Department_Id order by Department_Id
---D. To sort the departments by headcount
---ANS:
Select Department_Id,COUNT(*) as Employee_Count from Employees group by Department_Id order by Employee_Count desc
---E. To find departments with headcounts are greater than 5
---ANS:
Select Department_Id,COUNT(*) as Employee_Count from Employees group by Department_Id having count(*)>5
---F. Returns the minimum, maximum and average salary of employees in each department
---ANS:
Select Department_Id,MIN(Salary) as Min_Salary,MAX(Salary) as Max_Salary,AVG(Salary) as Avg_Salary from Employees group by 
Department_Id
---G. To get the total salary per department
---ANS:
Select Department_Id,SUM(Salary) as Total_Salary from Employees group by Department_Id
---H. Groups rows with the same values both department_id and job_id columns in the same group then return the rows for each of these
---groups
---ANS:
Select Department_Id,Job_Id,COUNT(*) as Row_Count from Employees group by Department_Id,Job_Id order by Department_Id,Job_Id
---2) A. To get the managers and their direct reports, and  to group employees by the managers and to count the direct reports
---ANS:
Select M.Employee_Id as Manager_Id,M.First_Name as Manager_First_Name,M.Last_Name as Manager_Last_Name,COUNT(E.Employee_Id) as 
Direct_Reports_Count from Employees M left join Employees E on M.Employee_Id=E.Manager_Id group by M.Employee_Id,M.First_Name,
M.Last_Name order by M.Employee_Id
---B. To find the managers who have at least five direct reports
---ANS:
Select M.Employee_Id as Manager_Id,M.First_Name as Manager_First_Name,M.Last_Name as Manager_Last_Name,COUNT(E.Employee_Id) as 
Direct_Reports_Count from Employees M left join Employees E on M.Employee_Id=E.Manager_Id group by M.Employee_Id,M.First_Name,
M.Last_Name having COUNT(E.Employee_Id)>=5 order by M.Employee_Id
---C. Calculates the sum of salary that the company pays for each department and selects only the departments with the sum of salary
---between 20000 and 30000
---ANS:
Select D.Department_Id,D.Department_Name,SUM(E.Salary) as Total_Salary from Departments D join Employees E on D.Department_Id=
E.Department_Id group by D.Department_Id,D.Department_Name having SUM(E.Salary) between 20000 and 30000 order by D.Department_Id
---D. To find the department that has employees with the lowest salary greater than 10000
---ANS:
Select D.Department_Id,D.Department_Name,MIn(E.Salary) as Lowest_Salary from Departments D join Employees E on D.Department_Id=
E.Department_Id where E.Salary>10000 group by D.Department_Id,D.Department_Name order by Lowest_Salary
---E. To find the departments that have the average salaries of employees between 5000 and 7000
---ANS:
Select D.Department_Id,D.Department_Name,AVG(E.Salary) as Average_Salary from Departments D join Employees E on D.Department_Id=
E.Department_Id group by D.Department_Id,D.Department_Name having AVG(E.Salary) between 5000 and 7000

---TASK 5
---1) Write a Query to combine the first name and last name of employees and dependents
---ANS:
Select CONCAT(Employees.First_Name,' ',Employees.Last_Name) as Employee_Name from Employees union Select 
CONCAT(Dependents.First_Name,' ',Dependents.Last_Name) as Dependent_Name from Dependents
---2) Write a Query to  Applies the INTERSECT operator to the A and B tables and sorts the combined result set by the id column in
---descending order
---ANS:
Select Id from A intersect Select Id from B order by Id desc
---3) A. Finds all employees who have at least one dependent
---ANS:
Select distinct Employees.Employee_Id,Employees.First_Name,Employees.Last_Name from Employees join Dependents on
Employees.Employee_Id=Dependents.Employee_Id
---B. Finds employees who do not have any dependents
---ANS:
Select Employees.Employee_Id,Employees.First_Name,Employees.Last_Name from Employees left join Dependents on Employees.Employee_Id=
Dependents.Employee_Id where Dependents.Employee_Id is null
---4) A. Suppose the current year is 2000. How to  use the simple CASE expression to get the work anniversaries of employees by
---ANS:
Select Employee_Id,First_Name,Last_Name,Hire_Date case when MONTH(Hire_Date) = MONTH(Current_Date()) and 
DAY(Hire_Date) = DAY(Current_Date()) then 'Today' else CONCAT(YEAR(Current_Date()) - YEAR(Hire_Date),'Years') end as Work_Anniversary
from Employees
---B. Write a Query If the salary is less than 3000, the CASE expression returns “Low”. If the salary is between 3000 and 5000, it 
---returns “average”. When the salary is greater than 5000, the CASE expression returns “High”.
---ANS:
Select Employee_Id,First_Name,Last_Name,Salary case when Salary<3000 then 'Low' when Salary>=3000 and Salary<=5000 then 'Average' 
when Salary>5000 then 'High' else 'Unknown' end as Salary_Category from Employees
---5) Write a Query to update Sarah’s last name from  Bell to Lopez
---ANS:
Update Employees set Last_Name= 'Lopez' where Employee_Id=192
Select * from Employees
---How to  make sure that the last names of children are always matched with the last name of parents in the  employees table
---ANS:
Alter table Dependents add Parent_Id int,add constraint Fk_Parent_Employee Foreign Key (Parent_Id) references Employees(Employee_Id)
Replace trigger trg_update_dependent_last_name after update of Last_Name on Employees for each row begin update Dependents set
Last_Name=:new.Last_Name where Parent_Id=:old.Employee_Id end

---TASK 6
---A. Combine above two queries using subquery in order find all departments located at the location whose id is 1700 and find all
---employees that belong to the location 1700 by using the department id list of the previous query
---ANS:
Select * from Employees where Department_Id in (Select Department_Id from Departments where Location_Id=1700)
---B. To find all employees who do not locate at the location 1700
---ANS:
Select * from Employees where Department_Id not in (Select Department_Id from Departments where Location_Id=1700)
---C. Finds the employees who have the highest salary
---ANS:
Select * from Employees where Salary= (Select MAX(Salary) from Employees)
---D. Finds all employees who salaries are greater than the average salary of all employees
---ANS:
Select * from Employees where Salary> (Select AVG(Salary) from Employees)
---E. Finds all departments which have at least one employee with the salary is greater than 10,000
---ANS:
Select * from Departments where Department_Id in (Select distinct Department_Id from Employees where Salary>10000)
---F. Finds all departments that do not have any employee with the salary greater than 10,000
---ANS:
Select * from Departments where Department_Id not in (Select distinct Department_Id from Employees where Salary>10000)
---G. To find the lowest salary by department
---ANS:
Select Department_Id,MIN(Salary) as Min_Salary from Employees group by Department_Id
---H. Finds all employees whose salaries are greater than the lowest salary of every department
---ANS:
Select * from Employees e where e.Salary> (Select MIN(e2.Salary) from Employees e2 where e2.Department_Id=e.Department_Id)
---I. Finds all employees whose salaries are greater than or equal to the highest salary of every department
---ANS:
Select * from Employees e where e.Salary>= (Select MAX(e2.Salary) from Employees e2 where e2.Department_Id=e.Department_Id)
---J. Returns the average salary of every department
---ANS:
Select Department_Id,AVG(Salary) as Avg_Salary from Employees group by Department_Id
---K. To calculate the average of average salary of departments
---ANS:
Select AVG(Avg_Salary) as Average_of_Averages from (Select Department_Id,AVG(Salary) as Avg_Salary from Employees group by 
Department_Id) as Department_Avg_Salaries
---L. Finds the salaries of all employees, their average salary, and the difference between the salary of each employee and the 
---average salary
---ANS:
Select e.Employee_Id,e.Salary,Avg_Salary.Avg_Salary as Average_Salary,e.Salary-Avg_Salary.Avg_Salary as Salary_Difference from
Employees e cross join (Select AVG(Salary) as Avg_Salary from Employees) as Avg_Salary