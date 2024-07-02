---Assignment:
--1-Create column with name as swapping where name should be swapped
--2-Create column with name as email should be generated for each employee
---Example: Potter Bonnie, potter.bonnie@test.com

Select * from Student

--Answer 1-
Select *, CONCAT(Right(Name, len(Name)-Charindex(' ', Name)), ' ', Left(Name, Charindex(' ', Name, 1)-1)) 
'Swapping' from Student

--Answer 2-
Select *, Lower(Right(Name, len(Name)-Charindex(' ', Name))+ '.'+ Lower(Left(Name, Charindex(' ', Name, 1)-1))) + '@test.com' 
'EmailID' from Student

Select * from EmployeeSampleData

--1- Write the query to show the job title wise summarize report that how many records belongs from that job title ?
--2- How many male and female do we have in dataset ?

--Answer 1-
Select [Job Title], COUNT([Job Title]) 'No. of Records' from EmployeeSampleData
group by [Job Title]

--Answer 2-
Select [Gender], COUNT([Gender]) 'No. of Records' from EmployeeSampleData
group by [Gender]