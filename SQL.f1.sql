CREATE DATABASE doodle;
USE doodle;
CREATE TABLE Emp(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   salary INT
   );
   
INSERT INTO Emp
(id,name,salary)
VALUES
   (1,"Ada",25000),
   (2,"Ahana",29000),
   (3,"Raj",35000),
   (4,"Sneha",24000);
   
   SELECT * FROM Emp;