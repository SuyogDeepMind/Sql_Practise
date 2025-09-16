CREATE DATABASE practise1;
USE practise1;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO Student (student_id, name, age, city, marks) VALUES
(1, 'Amit', 20, 'Delhi', 85),
(2, 'Sita', 21, 'Mumbai', 92),
(3, 'Ravi', 22, 'Delhi', 70),
(4, 'Anita', 23, 'Pune', 88),
(5, 'Kiran', 20, 'Chennai', 60),
(6, 'Rohit', 22, 'Mumbai', 95),
(7, 'Meena', 21, 'Delhi', 55),
(8, 'Arjun', 24, 'Bangalore', 76),
(9, 'Neeta', 20, 'Pune', 83),
(10, 'Vikas', 23, 'Chennai', 91),
(11, 'Alok', 22, 'Delhi', 66),
(12, 'Sunita', 21, 'Bangalore', 79),
(13, 'Priya', 23, 'Mumbai', 87),
(14, 'Ajay', 20, 'Delhi', 93),
(15, 'Kavita', 22, 'Chennai', 58);

# Select all columns from the Student table
SELECT * FROM Student;

# Display only the name and city of all students
SELECT name,city FROM Student;

# Find details of students who live in Delhi
SELECT * FROM Student WHERE city = "Delhi";

# Get students whose marks are greater than 80
SELECT *  FROM Student WHERE marks > 80 ;

# Show students who are 20 years old.
SELECT * FROM Student WHERE age = 20;

# Display students who are not from Mumbai
SELECT * FROM Student WHERE city NOT IN ('Mumbai');

# List students with marks between 70 and 90
SELECT * FROM Student WHERE marks BETWEEN 70 and 90;

# Show students whose name starts with ‘A’
SELECT * FROM Student WHERE name LIKE 'A%';

# Show students whose name ends with ‘a’.
SELECT * FROM Student WHERE name LIKE '%a';

# Display students whose name contains ‘it’
SELECT * FROM Student WHERE name LIKE '%it%';

# List students ordered by marks in ascending order
SELECT * FROM Student ORDER BY marks ASC;

# List students ordered by marks in descending order
SELECT * FROM Student ORDER BY marks DESC;

# Display the top 3 scorers (highest marks).
SELECT * FROM Student ORDER BY marks DESC LIMIT 3;

# Display the youngest student(s)
SELECT * FROM Student WHERE age = (SELECT min(age) FROM Student) LIMIT 1;

# # Display the youngest student(s)
SELECT *
FROM Student
ORDER BY age ASC
LIMIT 1;

# Find students who have marks less than 60.
SELECT * FROM Student WHERE marks < 60;

# Show students whose age is either 20 or 22
SELECT * FROM Student WHERE age = 20 Or age = 22;

# Display the unique cities students belong to
SELECT DISTINCT city FROM Student;

# Find the second highest marks in the Student table
SELECT marks FROM Student ORDER BY marks DESC LIMIT 1 OFFSET 1;

# Show all students but display only the first 5 rows
SELECT * FROM Student LIMIT 5;

# Find students whose name length is greater than 5 characters
SELECT * FROM Student WHERE LENGTH(name) > 5;


