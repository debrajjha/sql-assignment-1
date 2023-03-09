create database company_db;
use company_db;
create table Salespeople(
Snum int primary key,
Sname varchar(255) unique,
City varchar(255),
Comm int
);
insert into Salespeople
values(1001,'Peel','London',12),
(1002,'Serres','Sanjose',13),
(1004,'Motika','London',11),
(1007,'Rifkin','Barcelona',15),
(1003,'Axelrod','Newyork',10);

create table Customers(
cunm int primary key,
Cname varchar(255),
City varchar(255) not null,
Sunm int references Salespeople(Sunm)
);
insert into customers
values(2001,'Hoffman','London',1001),
(2002,'Giovanni','Rome',1003),
(2003,'Liu','Sanjose',1002),
(2004,'Grass','Berlin',1002),
(2006,'Clemens','London',1001),
(2008,'Cisneros','Sanjose',1007),
(2007,'Pereira','Rome',1004);

create table Orders(
Onum int primary key,
Amt double,
Odate date,
Cunm int references Customers(Cunm),
Sunm int references Salespeople(Sunm)
);
insert into Orders
values(3001,18.69,"1990-10-3",2008,1007),
(3003,767.19,"1990-10-3",2001,1001),
(3002,1900.10,"1990-10-3",2007,1004),
(3005,5160.45,"1990-10-3",2003,1002),
(3006,1098.16,"1990-10-3",2008,1007),
(3009,1713.23,"1990-10-4",2002,1003),
(3007,75.75,"1990-10-4",2004,1002),
(3008,4273.00,"1990-10-5",2006,1001),
(3010,1309.95,"1990-10-6",2004,1002),
(3011,9891.88,"1990-10-6",2006,1001);

select count(*) from salespeople where sname like'a%';
 select * from orders where amt>2000;
  select count(*) from salespeople where city='Newyork';
  select * from salespeople where city='London' and city='Paris';
select sunm, odate from orders;







