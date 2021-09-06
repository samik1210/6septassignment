//JOINS//

select * from emp2;
select * from DEPARTMENT;

SELECT *
FROM emp2 e INNER JOIN DEPARTMENT d
ON e. EMPID = d.EMPID

SELECT *
FROM emp2 e LEFT OUTER JOIN DEPARTMENT d
ON e.EMPID = d.EMPID

SELECT *
FROM emp2 e RIGHT OUTER JOIN DEPARTMENT d
ON e.EMPID = d.EMPID



SELECT e1.*, e2.FIRSTNAME "XYZ", e2.LASTNAME "PQR"
FROM emp2 e1 JOIN emp2 e2
ON e1.lastname = e2.FIRSTNAME

SELECT count(*) 
FROM emp2 CROSS JOIN DEPARTMENT;


//userdefined functions//

Select Min(EMPID)from emp2 where FIRSTNAME='XYZ';
Select Min(EMPID)from emp2; 
Select Avg(SALARY) from emp2;
Select count(*) from emp2;
Select count(SALARY) from emp2 where FIRSTNAME = 'PQR';
Select Sum(SALARY) from emp2;
Select Sum(SALARY) from emp2 where FIRSTNAME = 'XYZ';

SELECT SQUARE(25)
SELECT SQRT(100)
SELECT PI()
SELECT ROUND(123.45,1)
SELECT CEILING(100)
SELECT FLOOR(45.56)


SELECT DATENAME(YEAR, GETDATE()) AS 'Year';        
SELECT DATENAME(MONTH, GETDATE())AS 'Month Name';          
SELECT DATENAME(DAY, GETDATE())AS 'Day';         
SELECT DATENAME(WEEK, GETDATE())AS 'Week';           
SELECT DATENAME(HOUR, GETDATE())AS 'Hour';        
SELECT DATENAME(MINUTE, GETDATE())AS 'Minute';      
SELECT DATENAME(SECOND, GETDATE())AS 'Second';      

//CARTESION PRODUCT//
select * from emp2;
select * from DEPARTMENT;

SELECT  FIRSTNAME,LASTNAME,SALARY,DEPTNAME,DEPTID
   FROM emp2, DEPARTMENT;


   //triggers//

   CREATE TABLE Employee3  
(  
  Id INT PRIMARY KEY,  
  Name VARCHAR(45),  
  Salary INT,  
  Gender VARCHAR(12),  
  DepartmentId INT  
)  

INSERT INTO Employee3 VALUES (1,'Samiksha', 82000, 'Male', 3); 
INSERT INTO Employee3 VALUES(2,'samu', 52000, 'Female', 2);  
INSERT INTO Employee3 VALUES(3,'parag', 25000, 'male', 1);  
INSERT INTO Employee3 VALUES(4,'shweta', 47000, 'Male', 2);  
INSERT INTO Employee3 VALUES(5,'priya', 46000, 'Female', 3);  
SELECT * FROM Employee3;

CREATE TABLE Employee_Audit_Test1  
(    
Id int IDENTITY,   
Audit_Action text   
) 

CREATE TRIGGER trInsertEmploy
ON Employee3  
FOR INSERT  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from inserted  
  INSERT INTO Employee_Audit_Test1     
  VALUES ('New employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is added at ' + CAST(Getdate() AS VARCHAR(22)))  
END  
INSERT INTO Employee3 VALUES (6,'swara', 62000, 'Male', 3)  



CREATE TRIGGER trDeleteEmploy
ON Employee3  
FOR DELETE  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from deleted  
  INSERT INTO Employee_Audit_Test1  
  VALUES ('An existing employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is deleted at ' + CAST(Getdate() AS VARCHAR(22)))  
END  

DELETE FROM Employee3 WHERE Id = 2;  

 
//indexes//

select * from emp2;
select * from DEPARTMENT;


CREATE INDEX index_FIRSTNAME ON emp2 (SALARY);    
SELECT * FROM emp2 WHERE SALARY > 70000;

