CREATE DATABASE student10;
USE student10;
CREATE TABLE students10 (
student_id INT,
name VARCHAR(50),
course VARCHAR(50),
marks INT,
age INT,
city VARCHAR(50),
scholarship INT
);
INSERT INTO students10 VALUES
(1,'Ravi','Math', 85, 20, 'Chennai', NULL),
(2, 'Priya','Science', 92, 21, 'Delhi', 10000),
(3, 'Amit', 'English', 75, 19,'Mumbai', 5000),
(4, 'Sneha','Math', 88, 22, 'Kolkata', NULL),
(5, 'John','History', 67, 20,'Chennai', NULL),
(6, 'Meena','Science', 95, 23,'Delhi', 15000),
(7, 'Karan','English', 70, 20,'Bangalore', 3000),
(8, 'Divya', 'History', 80, 22,'Mumbai', NULL);
SELECT * FROM students10 WHERE marks BETWEEN 70 AND 90;
SELECT *  FROM students10 WHERE age BETWEEN 20 AND 22;
SELECT * FROM students10 WHERE name LIKE 'P%';
SELECT * FROM students10 WHERE city LIKE '%ai%';
SELECT * FROM students10 WHERE name LIKE '_r%';
SELECT *  FROM students10 ORDER BY marks DESC LIMIT 3;
SELECT *  FROM students10 WHERE scholarship IS NOT NULL;
SELECT * FROM students10 WHERE EXISTS (SELECT 1 FROM students10 WHERE city = 'Delhi' );
SELECT *  FROM students10 WHERE course = 'Math' AND age > 21;
SELECT *  FROM students10 WHERE course = 'Science' OR course = 'English';
SELECT * FROM students10 WHERE city <> 'Mumbai';
SELECT * FROM students10 WHERE scholarship IS NULL;
SELECT student_id, name, course, marks, age, city, IFNULL(scholarship, 0) AS scholarship FROM students10;
SELECT student_id, name, course, marks, age, city, COALESCE(scholarship, 0) AS scholarship FROM students10;










