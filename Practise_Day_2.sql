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

# Find students whose name contains the character ‘n’
SELECT * FROM Student WHERE name LIKE '%n%';

# Show students whose name does not contain the letter ‘a’
SELECT * FROM Student WHERE name NOT LIKE '%a%';

# Find students whose name has exactly 5 characters.
SELECT * FROM Student WHERE LENGTH(name) = 5;

# Find students whose name length is greater than 6
SELECT * FROM Student WHERE LENGTH(name) > 6;

# Display student names in uppercase.
SELECT UPPER(name) FROM Student;

# Display student names in lowercase
SELECT LOWER(name) FROM Student;

# Show the first 3 characters of each student’s name
SELECT SUBSTRING(name,1,3) FROM Student;

# Show the last 2 characters of each student’s name
SELECT RIGHT(name,2) FROM Student;

# Concatenate name and city as "Name - City".
SELECT CONCAT(name,'-',city) FROM Student;

# Find students whose name starts with ‘A’ and has length greater than 4
SELECT * FROM Student WHERE name LIKE 'A%' AND LENGTH(name) > 4;

# Find students whose name has ‘it’ in it.
SELECT * FROM Student WHERE name LIKE '%it%';

# Replace the letter ‘a’ with ’@’ in all student names.
SELECT REPLACE(name,'a','@') FROM Student;

# Reverse the student names
SELECT REVERSE(name) FROM Student;

# Show names without leading or trailing spaces (use TRIM).
SELECT TRIM(name) FROM Student;

# Show names where the second character is ‘r’.
SELECT name FROM Student WHERE name LIKE '_r%';

# Show names where the last character is ‘t’.
SELECT name FROM Student WHERE name LIKE '%t';

# Find students whose name is a palindrome (same forward and backward).
SELECT * FROM Student WHERE name = REVERSE(name);

# Count how many students have the letter ‘e’ in their name.
SELECT COUNT(name) FROM Student WHERE name LIKE '%e%';

# Sort students by the length of their name.
SELECT * FROM Student ORDER BY LENGTH(name);

# Display the name and its length side by side
SELECT name,LENGTH(name) FROM Student GROUP BY name; 