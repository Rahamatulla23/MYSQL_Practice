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
select emp_name from employees where emp_name like "a%";
-- 2 Find employees whose names end with the letter ‘n’.
select emp_name from employees where emp_name like "%N";
-- 3 Find employees whose names contain the substring ‘li’.
select emp_name from employees where emp_name like "%li%";
-- 4 Find employees whose email addresses contain an underscore (_) character.
select email from employees where email like "%\_%";
-- 5 Find employees whose job title contains the word ‘Manager’.
select job_title from employees where job_title like "%Manager%";
-- 6 Find employees whose email addresses end with ‘.com’.
select email from employees where email like "%.com";
-- 7 Find employees who are from cities starting with the letter ‘S’.
select city from employees where city like "s%";
-- 8 Find employees whose name’s second letter is ‘i’.
select emp_name from employees where emp_name like "_i%";
-- 9 Find employees whose department name has exactly two characters.
select department from employees where department like "__";
-- 1️0 Find employees whose email domain is ‘techcorp.com’.
select email from employees where email like "%techcorp.com%";
-- 11 Find employees whose names do not contain the letter ‘a’.
select emp_name from employees where emp_name not like "%a%";
-- 1️2 Find employees whose email contains any numeric digit.
select email from employees where email like "%0%"or email like"%1%"or email like "%2%" or email like "%3%" or email like"%4%"
or email like"%5%"or email like "%6%" or email like "%7%"or email like "%8%" or email like"%9%";
-- 13 Find employees whose job title contains either ‘Developer’ or ‘Engineer’.
select job_title from employees where job_title like "%Developer%"or"%Engineer%";
-- 14 Find employees whose names start with a consonant (not a vowel).
select emp_name from employees where emp_name  not like "%a%" or "%e%"or"i"or"%o%"or"%u%" ;
-- 1️5 Find employees whose email ends with ‘.in’ or ‘.org’.
select email from employees where email like "%.in" or email like "%.org";
