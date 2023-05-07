CREATE TABLE contacts (
    Id INT PRIMARY KEY NOT NULL,
    Email VARCHAR(30),
    fname VARCHAR(30),
    lname VARCHAR(30),
    company VARCHAR(30),
    Active_flag INT,
    opt_out INT
);
insert into contacts values(123,'a@a.com','Kian','Seth','ABC',1,1),
(133,'b@a.com','Neha','Seth','ABC',1,0),(234,'c@c.com','Puru','Malik','CDF',0,0),
(342,'d@d.com','Sid','Maan','TEG',1,0);
select * from contacts;
-- 1.Select all columns where active flag is 1
select * from contacts where Active_flag=1;

-- 2.Deactivate contacts who are opted out
delete from contacts where opt_out=1;
-- update contacts set Active_flag=0 where opt_out=1;
-- 3.Delete all contacts who have company name as 'ABC'
delete from contacts where company='ABC';
-- 4.Insert a new row
insert into contacts(id,fname,email,company,Active_flag,opt_out) values(658,'mili','mili@gmail.com','DGH',1,1);
-- 5.pull out the unique values of company column
select distinct(company) from contacts;
-- 6.Update name milli to neethi
update contacts set fname='niti' where Id=658;
