  



 
  
CREATE DATABASE Codecademy   

CREATE TABLE Student1(
 
 StudentId INT IDENTITY(1,1)  PRIMARY KEY NOT NULL,
 StudentName VARCHAR(50),
 Age INT,  
 City VARCHAR(50),
 [Address] VARCHAR(50),  
 CourseId VARCHAR(50) 
 
 )  

 CREATE TABLE Courses( 
    CourseId INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
	CourseName VARCHAR(50),  
	DurationTime VARCHAR(50), 
	CourseFee VARCHAR(50)  
  
 )  
  

 -- DISTINCT
 --The SELECT DISTINCT statement is used to return only distinct (different) values.
 
 INSERT INTO Student1 VALUES('kunal',24,'Nashik','patil nager', 1) 
 INSERT INTO Student1 VALUES('pratik',25,'pune','shivajinager', 2)   
 INSERT INTO Student1 VALUES('mukund',22,'pune','Cidco', 1)   
 INSERT INTO Student1 VALUES('kunal',21,'mumbai','Lower Parel', 4)   
 INSERT INTO Student1 VALUES('Tejas',24,'Nashik','patil nager', 1)  
  INSERT INTO Student1 VALUES('Nilesh',24,'','savtanager', 1) 
 

 INSERT INTO Courses VALUES('.NET','3 Months', 10000)
 INSERT INTO Courses VALUES('JAVASCRIPT','4 Months',15000)
 INSERT INTO Courses VALUES('PYTHON','2 Months', 10000)
 INSERT INTO Courses VALUES('JAVA','3 Months', 15000)  

 DELETE FROM Student1 WHERE StudentId = 5

 --SQL WHERE Clause 
 --WHERE  
 --The WHERE clause is used to filter records

   SELECT * FROM Student1 WHERE StudentName = 'mukund'  
   SELECT * FROM Student1 WHERE age = 24 
    
   SELECT * FROM Courses WHERE CourseName = 'JAVA'
   SELECT * FROM Courses WHERE CourseId = 2
    
--	 SQL AND, OR and NOT Operators
-- The AND and OR operators are used to filter records based on more than one condition 
--The AND operator displays a record if all the conditions separated by AND are TRUE. 
 
 SELECT  * FROM Student1 WHERE StudentName = 'mukund' AND City = 'pune'  
  
--OR  
--The OR operator displays a record if any of the conditions separated by OR is TRUE. 
  SELECT  * FROM Courses WHERE CourseName = 'JAVA ' OR CourseFee  = 15000

--NOT 
--The NOT operator displays a record if the condition(s) is NOT TRUE.  
SELECT * FROM  Student1 WHERE StudentName  ='mukund' AND NOT City = 'pune'  

--- ORDER BY Keyword 
 SELECT * FROM Student1 ORDER BY StudentName DESC  
 SELECT * FROM Student1 ORDER BY StudentName ASC  
  
--NULL Values  
--A field with a NULL value is a field with no value.
--It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
-- We will have to use the IS NULL and IS NOT NULL operators instead.   
 SELECT StudentName ,City FROM Student1 WHERE City IS NULL 
 SELECT Age,City FROM Student1 WHERE City IS NOT NULL

--The SQL SELECT TOP Clause 
--The SELECT TOP clause is used to specify the number of records to return. 
--(The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of
--records can impact performance.) 

SELECT TOP 3 * FROM Student1 

--LIMIT 
--SELECT * FROM Student1 LIMIT 1; 
 
 --SELECT * FROM Student1
 --FIRST 3 ROWS ONLY; 

--aggregate function in sql  

--SELECT MIN(Price) AS SmallestPrice
--FROM Products; 
--MIN
SELECT MIN(CourseFee) AS MinPrce FROM Courses  

--MAX 
SELECT MAX(CourseFee) AS MaxPrice FROM Courses     
 
SELECT COUNT(CourseName) FROM Courses


SELECT count (CourseId ) AS COUNTT from Student1 WHERE  CourseId  



 SELECT * FROM Courses
 SELECT MAX( c.CourseName),count(c.CourseName ) AS CourseName
 FROM Student1 s inner join Courses c on s.CourseId = c.CourseId
 GROUP BY c.CourseName 

--LIKE Operator 
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
--There are two wildcards often used in conjunction with the LIKE operator:
 
 SELECT * FROM Student1 WHERE StudentName  LIKE 'P%' 
 SELECT * FROM Student1 WHERE StudentName  LIKE '%R' 

  
--SQL IN Operator 
-- he IN operator allows you to specify multiple values in a WHERE clause.
--The IN operator is a shorthand for multiple OR conditions.

 SELECT * FROM Student1 WHERE City IN ('Nashik','pune')

-- SQL NOT NULL 
SELECT * FROM Student1 WHERE City NOT IN ('pune') 

--The SQL BETWEEN Operator 
--The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
--The BETWEEN operator is inclusive: begin and end values are included.  

SELECT * FROM Courses WHERE Courses 

--SELECT * FROM Products
--WHERE Price BETWEEN 10 AND 20; 


--SELECT * FROM Products
--WHERE Price BETWEEN 10 AND 20; 
SELECT * FROM  Courses WHERE CourseFee BETWEEN 1500 AND  12000  

---SQL aliases are used to give a table, or a column in a table, a temporary name.
--Aliases are often used to make column names more readable.
--An alias is created with the AS keyword. 

 SELECT CourseId As  ID FROM Courses  
 SELECT StudentName AS NAME FROM Student1

 SELECT StudentId AS Id , StudentName AS NAME  FROM Student1 

--SQL JOIN 
--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Right Join  
SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
    FROM  Student1 s
	   RIGHT JOIN Courses c  ON s.CourseId = c.CourseId 
 
-- LEFT JOIN

 SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
    FROM  Student1 s
	   LEFT JOIN Courses c  ON s.CourseId = c.CourseId 
   
	 SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
        FROM  Student1 s
	   INNER JOIN Courses c  ON s.CourseId = c.CourseId  
	   
--The SQL GROUP BY Statement  

SELECT COUNT (CourseFee ) FROM Courses 
GROUP BY  COUNT(DurationTime ) DESC

  



 
  
CREATE DATABASE Codecademy   

CREATE TABLE Student1(
 
 StudentId INT IDENTITY(1,1)  PRIMARY KEY NOT NULL,
 StudentName VARCHAR(50),
 Age INT,  
 City VARCHAR(50),
 [Address] VARCHAR(50),  
 CourseId VARCHAR(50) 
 
 )  

 CREATE TABLE Courses( 
    CourseId INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
	CourseName VARCHAR(50),  
	DurationTime VARCHAR(50), 
	CourseFee VARCHAR(50)  
  
 )  
  

 -- DISTINCT
 --The SELECT DISTINCT statement is used to return only distinct (different) values.
 
 INSERT INTO Student1 VALUES('kunal',24,'Nashik','patil nager', 1) 
 INSERT INTO Student1 VALUES('pratik',25,'pune','shivajinager', 2)   
 INSERT INTO Student1 VALUES('mukund',22,'pune','Cidco', 1)   
 INSERT INTO Student1 VALUES('kunal',21,'mumbai','Lower Parel', 4)   
 INSERT INTO Student1 VALUES('Tejas',24,'Nashik','patil nager', 1)  
  INSERT INTO Student1 VALUES('Nilesh',24,'','savtanager', 1) 
 

 INSERT INTO Courses VALUES('.NET','3 Months', 10000)
 INSERT INTO Courses VALUES('JAVASCRIPT','4 Months',15000)
 INSERT INTO Courses VALUES('PYTHON','2 Months', 10000)
 INSERT INTO Courses VALUES('JAVA','3 Months', 15000)  

 DELETE FROM Student1 WHERE StudentId = 5

 --SQL WHERE Clause 
 --WHERE  
 --The WHERE clause is used to filter records

   SELECT * FROM Student1 WHERE StudentName = 'mukund'  
   SELECT * FROM Student1 WHERE age = 24 
    
   SELECT * FROM Courses WHERE CourseName = 'JAVA'
   SELECT * FROM Courses WHERE CourseId = 2
    
--	 SQL AND, OR and NOT Operators
-- The AND and OR operators are used to filter records based on more than one condition 
--The AND operator displays a record if all the conditions separated by AND are TRUE. 
 
 SELECT  * FROM Student1 WHERE StudentName = 'mukund' AND City = 'pune'  
  
--OR  
--The OR operator displays a record if any of the conditions separated by OR is TRUE. 
  SELECT  * FROM Courses WHERE CourseName = 'JAVA ' OR CourseFee  = 15000

--NOT 
--The NOT operator displays a record if the condition(s) is NOT TRUE.  
SELECT * FROM  Student1 WHERE StudentName  ='mukund' AND NOT City = 'pune'  

--- ORDER BY Keyword 
 SELECT * FROM Student1 ORDER BY StudentName DESC  
 SELECT * FROM Student1 ORDER BY StudentName ASC  
  
--NULL Values  
--A field with a NULL value is a field with no value.
--It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
-- We will have to use the IS NULL and IS NOT NULL operators instead.   
 SELECT StudentName ,City FROM Student1 WHERE City IS NULL 
 SELECT Age,City FROM Student1 WHERE City IS NOT NULL

--The SQL SELECT TOP Clause 
--The SELECT TOP clause is used to specify the number of records to return. 
--(The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of
--records can impact performance.) 

SELECT TOP 3 * FROM Student1 

--LIMIT 
--SELECT * FROM Student1 LIMIT 1; 
 
 --SELECT * FROM Student1
 --FIRST 3 ROWS ONLY; 

--aggregate function in sql  

--SELECT MIN(Price) AS SmallestPrice
--FROM Products; 
--MIN
SELECT MIN(CourseFee) AS MinPrce FROM Courses  

--MAX 
SELECT MAX(CourseFee) AS MaxPrice FROM Courses     
 
SELECT COUNT(CourseName) FROM Courses


SELECT count (CourseId ) AS COUNTT from Student1 WHERE  CourseId  



 SELECT * FROM Courses
 SELECT MAX( c.CourseName),count(c.CourseName ) AS CourseName
 FROM Student1 s inner join Courses c on s.CourseId = c.CourseId
 GROUP BY c.CourseName 

--LIKE Operator 
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
--There are two wildcards often used in conjunction with the LIKE operator:
 
 SELECT * FROM Student1 WHERE StudentName  LIKE 'P%' 
 SELECT * FROM Student1 WHERE StudentName  LIKE '%R' 

  
--SQL IN Operator 
-- he IN operator allows you to specify multiple values in a WHERE clause.
--The IN operator is a shorthand for multiple OR conditions.

 SELECT * FROM Student1 WHERE City IN ('Nashik','pune')

-- SQL NOT NULL 
SELECT * FROM Student1 WHERE City NOT IN ('pune') 

--The SQL BETWEEN Operator 
--The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
--The BETWEEN operator is inclusive: begin and end values are included.  

SELECT * FROM Courses WHERE Courses 

--SELECT * FROM Products
--WHERE Price BETWEEN 10 AND 20; 


--SELECT * FROM Products
--WHERE Price BETWEEN 10 AND 20; 
SELECT * FROM  Courses WHERE CourseFee BETWEEN 1500 AND  12000  

---SQL aliases are used to give a table, or a column in a table, a temporary name.
--Aliases are often used to make column names more readable.
--An alias is created with the AS keyword. 

 SELECT CourseId As  ID FROM Courses  
 SELECT StudentName AS NAME FROM Student1

 SELECT StudentId AS Id , StudentName AS NAME  FROM Student1 

--SQL JOIN 
--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Right Join  
SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
    FROM  Student1 s
	   RIGHT JOIN Courses c  ON s.CourseId = c.CourseId 
 
-- LEFT JOIN

 SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
    FROM  Student1 s
	   LEFT JOIN Courses c  ON s.CourseId = c.CourseId 
   
	 SELECT   s.StudentId 
         ,s.StudentName,
		 s.Age ,
		 s.City,
		 s.[Address],
		 c.CourseId,
		 c.CourseName,
		 c.DurationTime,
		 CourseFee
        FROM  Student1 s
	   INNER JOIN Courses c  ON s.CourseId = c.CourseId  
	   
--The SQL GROUP BY Statement  

SELECT COUNT (CourseFee ) FROM Courses 
GROUP BY  COUNT(DurationTime ) DESC




 SELECT * FROM Student1 
 SELECT * FROM Courses 


-- UNION Operator 
--The UNION operator is used to combine the result-set of two or more SELECT statements.  
SELECT StudentName,City FROM Student1 WHERE StudentName = 'kunal'
UNION 
SELECT CourseName,DurationTime FROM Courses where CourseName = '.net'

--SELECT 'Customer' AS Type, ContactName, City, Country
--FROM Customers
--UNION
--SELECT 'Supplier', ContactName, City, Country
--FROM Suppliers; 

--SELECT  StudentName , city,Age FROM Student1 
--UNION 
--SELECT CourseFee , DurationTime FROM Courses






 








   

 
 
 
  
 


 SELECT * FROM Student1 
 SELECT * FROM Courses






 






   

 
 
 
  
 