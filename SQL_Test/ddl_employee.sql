-- Create Table Employee
Create Table employee (
    Name VARCHAR(50),
    Position VARCHAR(50),
    Join_Date DATE,
    Release_Date DATE,
    Year_of_Experience DECIMAL(4,1),
    Salary DECIMAL(10,2)
);

-- Insert Initial Data
INSERT INTO employee (Name, Position, Join_Date, Release_Date, Year_of_Experience, Salary) VALUES
('Jacky', 'Solution Architect', '2018-07-25', '2022-07-25', 8, 150),
('John', 'Assistant Manager', '2016-02-02', '2021-02-02', 12, 155),
('Alano', 'Manager', '2010-11-09', NULL, 14, 175),
('Aaron', 'Engineer', '2021-08-16', '2022-08-16', 1, 80),
('Allen', 'Engineer', '2024-06-06', NULL, 4, 75),
('Peter', 'Team Leader', '2020-01-09', NULL, 3, 85);

-- 1. Insert New Employee Albert w join date 24 January and 
Insert Into employee (Name, Position, Join_Date, Year_of_Experience, Salary)
Values ('Albert', 'Engineer', '2024-01-24', 2.5, 50);

-- 2. Update Engineer Salary
Update employee
Set Salary = 85
Where LOWER(Position) = 'engineer';

--3. Sum total salary for 2021
Select SUM(Salary) AS Total_Salary_2021
From employee
Where YEAR(Join_Date) <= 2021
  And (Release_Date IS NULL OR YEAR(Release_Date) >= 2021);

--4. Select 3 employee with most Experience
Select Name, Position, Year_of_Experience
From employee
Order By Year_of_Experience DESC
Limit 3;

--5. Subquery for engineer that have experience <= 3 Years
Select *
From employee
Where Name IN (
    Select Name
    From employee
    Where Position = 'Engineer'
      AND Year_of_Experience <= 3
);
