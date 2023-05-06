create database online_therapy;
create table doctor(
id int primary key not null,
name varchar(30),
specialization varchar(30),
gender varchar(30)
);
insert into doctor values(100,'Prasanna','Cardialogist','Female'),(101,'Nani','Opthamalogist','Male'),
(102,'Nandini','Neurologist','Female'),(103,'Jayaram','Nephrologist','male'),
(104,'Navitha','Opthamalogist','Female');
select * from doctor;

create table Appointment(
app_num int primary key,
app_date date,
app_time time,
doctor_id int,
patient_name varchar(30)
);
insert into Appointment values(200,'2023-04-23','7:04:32',100,'Keerthi'),
(201,'2023-04-30','5:30:35',103,'Kavya'),(202,'2023-05-3','3:31:45',105,'Deepthi'),
(203,'2023-04-5','6:23:52',107,'Naziya');
select * from Appointment;

create table patient(
patient_id int primary key auto_increment,
name varchar(30),
age int,
gender varchar(30),
address varchar(30),
doctor_id int  );

insert into patient values(300,'Keerthi',20,'Female','Nandyal',100),
(301,'Kavya',23,'Female','Kurnool',103),(302,'Keerthana',34,'Female','Hyderabad',102),
(303,'Deepthi',26,'Female','Chennai',105),(304,'Naziya',32,'Female','Pune',107),
(305,'Indu',37,'Female','Kadapa',102);
select * from patient;

create table Reviews(
review_id int primary key auto_increment,
review_date date,
patient_id int,
review_text varchar(90),
rating int
);

insert into Reviews values(500,'2023-05-30',300,'Comfortable stay',5),
(501,'2023-05-20',303,'Facilities are good',4),
(502,'2023-05-23',305,'Staff was very concerned and helpful',4),
(503,'2023-05-12',307,'Great experience',5);
select * from Reviews;





