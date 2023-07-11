create database bank;
use bank;
create table emp_details(
e_id int ,
e_name varchar(50)not null,
e_hyke int,
b_id varchar(50) primary key,
e_salary int check(e_salary>8000),
e_age int check (e_age>22)
);
insert into emp_details values(120,"ram",5000,"EM123",20000,24),
(121,"hari",6000,"EM345",15000,26),
(122,"thara",7000,"EM567",16000,25),
(123,"karthi",6000,"EM789",25000,27),
(124,"siva",9000,"EM901",22000,30),
(125,"priya",6000,"EM135",17000,29),
(126,"jothi",8000,"EM579",19000,28),
(127,"abi",6000,"EM246",30000,35),
(128,"sasi",6000,"EM680",9000,36),
(129,"eni",6000,"EM147",11000,31);
select*from employees;

create table cust_details(
c_name varchar(50)not null,
c_accNo int not null,
c_pin int,
c_balance int,
c_pan varchar(50),
c_contact int primary key,
c_address varchar(50)default "unassigned",
b_id varchar (50));
select*from cust_details;

insert into cust_details values("karki",13563,3456,50000,"Kar21",6832589754,"vridhachalam","EM123"),
("anu",98761,7890,20000,"anu29",0459128443,"neyveli","EM789"),
("ajai",45129,9457,45000,"Aja34",1234578330,"pondy","EM456"),
("preethi",56763,1236,37000,"pre123",7639567890,"bangalore","EM901"),
("nithiya",56913,9271,69000,"nithi14",9700167890,"attur","EM147"),
("pooja",93213,9956,95000,"poo22",9711567890,"vellore","EM579"),
("aruna",55263,1426,60000,"arun22",9655567890,"madurai","EM680"),
("mano",24563,9856,80000,"mano30",9764567890,"hydrabed","EM579"),
("karthika",13563,3456,50000,"kar09",1237654890,"ooty","EM345"),
("vino",9127,2378,54000,"vino59",5543567890,"chennai","EM147"),
("janani",88363,2246,90000,"janu09",9845567890,"thiruvannamalai","EM567"),
("shrmi",5671,9907,15000,"shr12",9786617890,"coimbatore","EM123"),
("ashwin",93563,3996,100000,"ash21",1288567810,"namakkal","EM680"),
("prabha",24563,9956,12000,"pra901",1234990890,"trichy","EM579"),
("adi",13443,3452,30000,"adi121",1277767890,"selam","EM123");

select*from cust_details;
use bank;

select cust_details.c_name,
cust_details.c_accNo,
cust_details.c-pin,
cust_details.c_balance,
cust_details.c_pan,
cust_details.c_contact,
cust_details.c_address,
emp_details.e_id,
emp_details.e_name,
emp_details.e_hyke,
emp_details.e_salary,
emp_details.e_age 
from cus_details
inner join emp_details
on emp_details.b_id=cus_details.b_id;

select*from customer order by b_id;



