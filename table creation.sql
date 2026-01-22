create table department
(
dept_id smallint unsigned primary key  ,
dept_name varchar(100) not null
);
create table professors
(
prof_id smallint unsigned primary key ,
prof_name varchar(100) not null,
dept_id smallint unsigned,
foreign key (dept_id) references department (dept_id) 
);
create table courses
(
course_id varchar(10) primary key,
course_name varchar(100) not null,
prof_id smallint unsigned,
foreign key (prof_id) references professors (prof_id)
);
create table  student
(
student_id int unsigned primary key ,
student_name varchar(100) not null,
dept_id smallint unsigned,
foreign key(dept_id) references department(dept_id)
);
create table  enrollments
(
enroll_id int unsigned primary key,
student_id int unsigned ,
course_id varchar(10) ,
semester varchar(20) not null,
foreign key(student_id) references student(student_id),
foreign key(course_id) references courses(course_id)
);