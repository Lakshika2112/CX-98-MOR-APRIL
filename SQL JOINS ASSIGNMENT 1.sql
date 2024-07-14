Create table Employeedetail (EmployeeID int, FirstName varchar(max), LastName varchar(max), Salary int, Department varchar(max), 
Gender varchar(max))

Create table Projectdetail (ProjectDetailID int, EmployeeDetailID int, ProjectName varchar(max))

Select * from Employeedetail
Select * from Projectdetail

--1- Get Employee Name, Project Name order by firstname from "EmployeeDetail" and "ProjectDetail"for those Employee which have 
-----assigned project already. 

Select Employeedetail.EmployeeID, Employeedetail.FirstName as EmployeeName, Projectdetail.ProjectName from Employeedetail
left join Projectdetail on Employeedetail.EmployeeID=Projectdetail.EmployeeDetailID where Projectdetail.ProjectName is not Null 
order by FirstName

--2- Get Employee Name, Project Name order by firstname from "EmployeeDetail" and "ProjectDetail"for those Employee even they have 
-----not assigned project.

Select Employeedetail.EmployeeID, Employeedetail.FirstName as EmployeeName, Coalesce(Projectdetail.ProjectName, 'No assigned project')
As Proj from Employeedetail left join Projectdetail on Employeedetail.EmployeeID=Projectdetail.EmployeeDetailID order by FirstName

--3- Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" 
-----and "ProjectDetail".

Select Employeedetail.EmployeeID, Employeedetail.FirstName as EmployeeName, Coalesce(Projectdetail.ProjectName, 'No project assigned')
As Proj from Projectdetail right join Employeedetail on Employeedetail.EmployeeID=Projectdetail.EmployeeDetailID order by FirstName

--4- Get Employee Record (Employeename, project name)from both tables ([EmployeeDetail],[ProjectDetail]),if no match found in 
-----any table then show null.

Select Employeedetail.EmployeeID, Employeedetail.FirstName as EmployeeName from Employeedetail full outer join Projectdetail
on Employeedetail.EmployeeID=Projectdetail.EmployeeDetailID order by FirstName
