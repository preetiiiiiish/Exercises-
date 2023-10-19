CREATE DATABASE EMPLOYEES;
USE EMPLOYEES;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary INT
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES
    (1, 'John', 'Smith', 101, 60000),
    (2, 'Alice', 'Johnson', 102, 55000),
    (3, 'David', 'Lee', 101, 62000),
    (4, 'Sarah', 'Brown', 103, 58000),
    (5, 'Michael', 'Clark', 102, 54000);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (101, 'Sales'),
    (102, 'Marketing'),
    (103, 'Finance'),
    (104, 'Engineering');


SELECT emp.EmployeeID, emp.FirstName, emp.LastName, emp.DepartmentID, emp.Salary, d.DepartmentName from Employees as emp right join Departments as d on emp.DepartmentId= d.DepartmentId;

SELECT emp.EmployeeID, emp.FirstName, emp.LastName, emp.DepartmentID, emp.Salary, d.DepartmentName from Employees as emp left join Departments as d on emp.DepartmentId= d.DepartmentId;

SELECT emp.EmployeeID, emp.FirstName, emp.LastName, emp.DepartmentID, emp.Salary, d.DepartmentName from Employees as emp inner join Departments as d on emp.DepartmentId= d.DepartmentId;




CREATE TABLE Employees_A (
    EmployeeID INT  ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    Depeartment VARCHAR(20)
);
INSERT INTO Employees_A (EmployeeID, FirstName, LastName, DepartmentID, Salary, Depeartment)
VALUES
    (1, 'John', 'Smith', 101, 60000, 'Accounts'),
    (2, 'Alice', 'Johnson', 102, 55000, 'Finance'),
    (3, 'David', 'Lee', 101, 62000, 'Marketing'),
    (4, 'Sarah', 'Brown', 103, 58000,'Engineering'),
    (5, 'Michael', 'Clark', 102, 54000,'Sales');

CREATE TABLE Employees_B (
    EmployeeID INT  ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    Depeartment VARCHAR(20)
);

INSERT INTO Employees_B (EmployeeID, FirstName, LastName, DepartmentID, Salary, Depeartment)
VALUES
(1, 'David', 'Lee', 101, 62000, 'Marketing'),   
(2, 'John', 'Smith', 102, 60000, 'Accounts'),
(3, 'Rachel', 'Kent', 103, 54000,'Sales'),
(4, 'Mike', 'Ross', 104, 50000,'Sales'),
(5, 'Michael', 'Clark', 105, 54000,'Sales'),
(6, 'Alice', 'Johnson', 106, 55000, 'Finance'),
(7, 'Adam', 'Reeves', 107, 67000, 'Data Analytics');



select * from Employees_A union select * from Employees_B;
select * from Employees_A union all select * from Employees_B;

select * from Employees_A where Employees_A.FirstName in (select Employees_B.FirstName from Employees_B);

  
  
  
