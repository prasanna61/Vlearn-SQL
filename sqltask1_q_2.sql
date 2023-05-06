create table customer(
cust_id int primary key,
cust_name varchar(30),
city varchar(30),
grade int,
salesman_id int);
insert into customer values(1002,'Prasanna','Hyderabad',100,5001),
(1007,'Nandini','Chennai',200,5006),(1005,'Keerthana','pune',300,5003),
(1003,'Kavya','Mumbai',200,5004),(1006,'Deepthi','Delhi',50,5005),
(1008,'keerthi','Kolkata',65,5002);

create table salesman(
salesman_id int primary key,
name varchar(30),
city varchar(30),
commission float);
insert into salesman values(5001,"Nani",'Hyderabad',0.15),
(5002,'Teja','Kolkata',0.13),(5003,'Chinna','pune',0.11),
(5004,'Nandu','Mumbai',0.14),(5005,'Anshika','Delhi',0.13),
(5006,'Narayana','Chennai',0.12);
select cust_name,customer.city as cust_city,grade,salesman.salesman_id,salesman.city as salesman_city from customer
left join salesman on customer.salesman_id=salesman.salesman_id where grade<100 order by cust_id asc;

