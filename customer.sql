create database customermanagement;
use customermanagement;
drop table if exists customer;
create table customer(
id int primary key auto_increment,
firstName varchar(50), 
lastName varchar(50), 
email varchar(50)
);

select * from customer;

insert into customer values(1,"Harshit", "Choudhary", "Harshit@greatlearning.in");
insert into customer values(2,"Ankit", "Garg", "Ankit@greatlearning.in");
insert into customer values(3,"Monica", "Sharma", "Monica@greatlearning.in");
insert into customer values(4,"Bhavya", "Shetty", "Bhavya@greatlearning.in");



