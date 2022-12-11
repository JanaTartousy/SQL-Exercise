Basic Queries:

select Name FROM students;
SELECT AGE FROM STUDENTS WHERE AGE > 30;
SELECT * FROM STUDENTS WHERE AGE='30' AND GENDER='F';
SELECT POINTS FROM STUDENTS WHERE NAME='Alex';
INSERT INTO STUDENTS(NAME, AGE, GENDER, POINTS) VALUES ('JANA', '20', 'F', '600');
UPDATE STUDENTS SET POINTS=350 WHERE POINTS=300;
UPDATE STUDENTS SET POINTS=150 WHERE POINTS=200;



Creating Table:

CREATE TABLE graduates (
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INT,
    Gender TEXT,
    Points INT,
	Graduation  TEXT );
INSERT INTO graduates (ID, Name, Age, Gender,Points)
 SELECT ID, Name, Age, Gender,Points FROM students WHERE Name="Layal";
 UPDATE graduates SET Graduation= "08/09/2018" WHERE Name="Layal";
 DELETE FROM students WHERE name ="Layal";


 Joins:
 
SELECT employees.Name, employees.Company, companies.date
FROM employees, companies
WHERE employees.Company = companies.name ;
SELECT employees.name 
FROM employees INNER JOIN companies ON employees.Company=companies.Name
 WHERE companies.Date<"2000";
 SELECT companies.name 
FROM companies INNER JOIN employees ON employees.Company=companies.name
 WHERE employees.Role="Graphic Designer";


Count & Filter:

SELECT Name FROM STUDENTS WHERE Points=(SELECT max(points) FROM students);
SELECT avg ("Points") FROM students;
SELECT count(ID) FROM students WHERE Points="500";
SELECT name FROM students WHERE name like "%s%";
SELECT * FROM students ORDER BY Points DESC;