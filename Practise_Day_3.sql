CREATE DATABASE practise2;
USE practise2;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    fees INT
);

INSERT INTO Student VALUES
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

INSERT INTO Course VALUES
(1, 'Math', 1, 5000),
(2, 'Physics', 2, 5500),
(3, 'Chemistry', 3, 5000),
(4, 'Biology', 4, 6000),
(5, 'Math', 5, 5000),
(6, 'Physics', 6, 5500),
(7, 'Chemistry', 7, 5000),
(8, 'Biology', 8, 6000),
(9, 'Math', 9, 5000),
(10, 'Physics', 10, 5500),
(11, 'Chemistry', 11, 5000),
(12, 'Biology', 12, 6000),
(13, 'Math', 13, 5000),
(14, 'Physics', 14, 5500),
(15, 'Chemistry', 15, 5000);

# Count the total number of students.
SELECT COUNT(name) FROM Student;

# Find the average marks of all students.
SELECT AVG(marks) FROM Student;

# Find the maximum marks scored by a student.
SELECT MAX(marks) FROM Student;

# Find the minimum marks scored by a student.
SELECT MIN(marks) FROM Student;

# Find the total sum of marks of all students.
SELECT SUM(marks) FROM Student;

# Count how many students are from Delhi.
SELECT COUNT(name) FROM Student WHERE city = 'Delhi';

# Find the average marks of students in Mumbai.
SELECT AVG(marks) FROM Student WHERE city = 'Mumbai';

# Count how many students are older than 21.
SELECT COUNT(name) FROM Student WHERE age > 21;

# Find the total number of students in each city
SELECT COUNT(name),city FROM Student GROUP BY city;

# Find the average marks per city.
SELECT AVG(marks),city FROM Student GROUP BY city;

# Find the maximum marks per city.
SELECT city,MAX(marks) FROM Student GROUP BY city;

# Find the minimum marks per city.
SELECT city,MIN(marks) FROM Student GROUP BY city;

# Find the total sum of marks per city.
SELECT city,SUM(marks) FROM Student GROUP BY city;

# Count students in each city having marks greater than 80.
SELECT City,COUNT(name) FROM Student WHERE marks > 80 GROUP BY city;

# Find cities having more than 2 students.
SELECT city,COUNT(name) FROM Student GROUP BY city HAVING COUNT(name) > 2 ;

# Find the average course fees for all courses.
SELECT AVG(fees),course_name FROM Course GROUP BY course_name;

# Find total fees collected per course.
SELECT course_name,SUM(fees) FROM Course GROUP BY course_name;

# Find the maximum fees per course.
SELECT course_name,MAX(fees) FROM Course GROUP BY course_name;

# Find courses having total fees > 25,000.
SELECT course_name,SUM(fees) FROM Course GROUP BY course_name HAVING SUM(fees) > 25000; 

# Count how many students are enrolled in each course_name.
SELECT COUNT(student_id),course_name FROM Course GROUP BY course_name;