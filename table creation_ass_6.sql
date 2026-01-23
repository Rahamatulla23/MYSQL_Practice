create table departments 
(
dept_id int unsigned primary key auto_increment,
dept_name varchar(100) not null,
location varchar(100) not null,
contact_no char(10) unique not null
);
create table doctors
(
doctor_id smallint unsigned primary key ,
doctor_name varchar(100) not null,
dept_id int unsigned auto_increment,
qualification varchar(100) not null,
phone char(10) unique not null,
email varchar(100) unique not null,
foreign key (dept_id) references departments(dept_id)
);
create table patients
(
patient_id int unsigned primary key auto_increment,
patient_name varchar(100) not null ,
Gender enum("Femal","Male","Others") not null,
age tinyint unsigned,
phone char(10) unique not null,
address varchar(200) ,
admission_date date
);
create table rooms
(
room_id smallint unsigned primary key auto_increment,
room_type varchar(100),
room_status varchar(100),
price_per_day decimal(7,2) not null
);
create table admissions
(
admission_id int unsigned primary key auto_increment,
patient_id int unsigned ,
room_id smallint unsigned ,
doctor_id smallint unsigned ,
admit_date date,
discharge_date date,
foreign key (patient_id) references  patients (patient_id),
foreign key (room_id) references rooms (room_id),
foreign key(doctor_id ) references doctors(doctor_id )
);
create table appointments
(
appontment_id int unsigned primary key auto_increment,
patient_id int unsigned ,
doctor_id smallint unsigned ,
appointment_date date,
appointment_time time,
status varchar(100) not null,
foreign key (patient_id) references  patients (patient_id),
foreign key(doctor_id ) references doctors(doctor_id )
);
create table treatments
(
treatment_id int unsigned primary key auto_increment,
admission_id int unsigned,
treatment_name varchar(100) not null,
treatment_date date,
notes varchar(100),
foreign key (admission_id) references admissions(admission_id)
);
create table prescriptions
(
prescription_id smallint unsigned primary key auto_increment,
treatment_id int unsigned,
medicine_name varchar(100) not null,
dosage decimal(5,2),
duration tinyint unsigned not null,
foreign key (treatment_id) references treatments(treatment_id )
);
create table bills
(
bill_id int unsigned primary key auto_increment,
patient_id int unsigned,
admission_id int unsigned ,
total_amount decimal(9,2),
payment_status enum("completed","not completed"),
payment_date date,
foreign key (patient_id) references patients(patient_id),
foreign key(admission_id) references  admissions(admission_id)
);
create table staff
(
staff_id smallint unsigned primary key auto_increment,
staff_name varchar(100) not null,
role varchar(100) not null default 'NA',
dept_id int unsigned ,
phone char(10)  unique  not null,
shidt_time time,
foreign key(dept_id) references departments (dept_id)
);