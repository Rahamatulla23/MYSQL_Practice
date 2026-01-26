CREATE DATABASE string_practice_db;
USE string_practice_db;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    job_title VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO employees (emp_name, job_title, department, email, city) VALUES
('Alice Johnson', 'Software Engineer', 'IT', 'alice.johnson@techcorp.com', 'New York'),
('Bob Williams', 'Senior Developer', 'IT', 'bob_w@techcorp.com', 'Chicago'),
('Charlie Smith', 'HR Manager', 'HR', 'charlie.hr@bizgroup.org', 'Boston'),
('Diana Prince', 'Project Lead', 'Operations', 'diana.p@operamax.net', 'San Francisco'),
('Ethan Brown', 'Sales Executive', 'Sales', 'ethan.brown@sellmore.co', 'Dallas'),
('Fiona Davis', 'Marketing Analyst', 'Marketing', 'fiona_davis@marketx.in', 'New York'),
('George Clark', 'Software Tester', 'IT', 'george.c@techcorp.com', 'Austin'),
('Hannah Lee', 'Business Analyst', 'Finance', 'hannah.lee@finlogic.com', 'Boston'),
('Ian White', 'System Administrator', 'IT', 'ian.white@techcorp.com', 'Seattle'),
('Julia Adams', 'Data Scientist', 'Data', 'julia.a@datasolve.ai', 'Denver'),
('Kevin Miller', 'Recruiter', 'HR', 'kevin.m@bizgroup.org', 'Chicago'),
('Laura Green', 'Graphic Designer', 'Marketing', 'laura_green@marketx.in', 'New York'),
('Mike Turner', 'Sales Manager', 'Sales', 'mike.turner@sellmore.co', 'Houston'),
('Nina Patel', 'Product Manager', 'Operations', 'nina.patel@operamax.net', 'Seattle'),
('Oscar Reed', 'Finance Executive', 'Finance', 'oscar.r@finlogic.com', 'Dallas'),
('Priya Sharma', 'Content Writer', 'Marketing', 'priya.sharma@marketx.in', 'Boston'),
('Quentin Jones', 'Backend Developer', 'IT', 'quentin.j@techcorp.com', 'San Diego'),
('Rachel Kim', 'HR Coordinator', 'HR', 'rachel.k@bizgroup.org', 'New York'),
('Sam Wilson', 'Network Engineer', 'IT', 'sam.w@techcorp.com', 'Atlanta'),
('Tina Brown', 'Sales Associate', 'Sales', 'tina.brown@sellmore.co', 'Chicago');

-- 1 Find employees whose names start with the letter ‘A’.
-- 2 Find employees whose names end with the letter ‘n’.
-- 3 Find employees whose names contain the substring ‘li’.
-- 4 Find employees whose email addresses contain an underscore (_) character.
-- 5 Find employees whose job title contains the word ‘Manager’.
-- 6 Find employees whose email addresses end with ‘.com’.
-- 7 Find employees who are from cities starting with the letter ‘S’.
-- 8 Find employees whose name’s second letter is ‘i’.
-- 9 Find employees whose department name has exactly two characters.
-- 1️0 Find employees whose email domain is ‘techcorp.com’.
-- 11 Find employees whose names do not contain the letter ‘a’.
-- 1️2 Find employees whose email contains any numeric digit.
-- 13 Find employees whose job title contains either ‘Developer’ or ‘Engineer’.
-- 14 Find employees whose names start with a consonant (not a vowel).
-- 1️5 Find employees whose email ends with ‘.in’ or ‘.org’.