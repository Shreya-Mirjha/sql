CREATE DATABASE school;
USE school;

CREATE TABLE student(
Sno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city varchar(20)
);

INSERT INTO student
(Sno, name, marks, grade, city)
VALUES
(1,"Anil",78,"B","Pune"),
(2,"Anish",48,"C","Delhi"),
(3,"Anmol",98,"A","Bhilai"),
(4,"Bhumi",74,"B","Punjab"),
(5,"Sheel",79,"B","Mumbai"),
(6,"Dhruv",82,"A","Delhi");

SELECT * FROM student;

SELECT name, grade FROM student;

SELECT DISTINCT city FROM student;
 
 SELECT * FROM student WHERE marks > 75; 
 
 SELECT * FROM student WHERE city = "Mumbai";
 
SELECT * FROM student
WHERE grade = "A" AND city ="Bhilai";

SELECT * FROM student 
WHERE marks > 75 AND city = "Mumbai";

SELECT * FROM student 
WHERE marks > 75 OR city = "Mumbai";

SELECT * FROM student
WHERE marks BETWEEN  80 AND 90;

SELECT * FROM student 
WHERE city IN("Delhi","Mumbai");

SELECT * FROM student 
WHERE city NOT IN("Delhi","Mumbai");

SELECT * FROM student 
LIMIT 4;

SELECT * FROM student 
ORDER BY marks ASC;

SELECT * FROM student 
ORDER BY marks DESC;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT COUNT(marks) FROM student;
SELECT AVG(marks) FROM student;

SELECT city ,count(Sno) FROM student GROUP BY city;
SELECT city, name,count(Sno) FROM student GROUP BY city, name;
SELECT city ,avg(marks) FROM student GROUP BY city;
SELECT city ,avg(marks) FROM student 
GROUP BY city
ORDER BY city;

SELECT city,count(name) FROM student 
GROUP BY city
HAVING max(marks) > 90;

SELECT city FROM student
WHERE marks > 75
GROUP BY city
HAVING max(marks)
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student 
set grade = "O"
WHERE grade = "A";

SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;

UPDATE student 
set grade = "A"
WHERE grade = "O";

UPDATE student 
set marks = 25
WHERE Sno = 4;
SELECT * FROM student;

DELETE FROM student WHERE marks <33;
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE class
RENAME TO student;

ALTER TABLE student
CHANGE COLUMN Sno Rollno INT UNIQUE;

ALTER TABLE student
MODIFY marks VARCHAR(2);

ALTER TABLE student
CHANGE name full_name varchar(50) NOT NULL;

ALTER TABLE student
DROP COLUMN grade;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student
WHERE marks < 80;

CREATE TABLE class(
id INT PRIMARY KEY,
name varchar(30)
);

INSERT INTO class(id,name)
VALUES
(101,"adam"),
(102,"rahul"),
(103,"neha");

CREATE TABLE course(
id INT PRIMARY KEY ,
COURSE varchar(20)
);

INSERT INTO course (id,course)
VALUES
(102,"ENGLISH"),
(105,"MATHS"),
(103,"BIOLOGY"),
(107,"CS");

SELECT * FROM class;
SELECT * FROM course;

SELECT * FROM class
INNER JOIN course
ON class.id=course.id;

SELECT * FROM class
LEFT JOIN course
ON class.id=course.id;

SELECT * FROM class
RIGHT JOIN course
ON class.id=course.id;

SELECT * FROM class
LEFT JOIN course
ON class.id=course.id
UNION
SELECT * FROM class
RIGHT JOIN course
ON class.id=course.id;

SELECT * FROM class
RIGHT JOIN course
ON class.id=course.id
WHERE class.id IS NULL;

SELECT * FROM class
LEFT JOIN course
ON class.id=course.id
WHERE course.id IS NULL;

