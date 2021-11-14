create schema Travel_On_The_Go;
use Travel_On_The_Go; 

create table Passenger(Id int auto_increment primary key, Passenger_nam varchar(50), Category varchar(50), Gender varchar(1),
Boarding_City varchar(50), Destination_City varchar(50), Distance int, Bus_Type varchar(50));

create table Pricing(Bus_Type varchar(50),Distance int, Price int);

insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Sejal', 'AC','F','Bengaluru', 'Chennai',350, 'Sleeper'); 
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Anmol', 'Non-AC','M','Mumbai', 'Hyderabad',700, 'Sitting');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Pallavi', 'AC','F','Panaji', 'Bengaluru',600, 'Sleeper');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Khusboo', 'AC','F','Chennai', 'Mumbai',1500, 'Sleeper');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Udit', 'Non-AC','M','Trivandrum', 'Panaji',1000, 'Sleeper');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Ankur', 'AC','M','Nagpur', 'Hyderabad',500, 'Sitting');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Hemant', 'Non-AC','M','Panaji', 'Mumbai',700, 'Sleeper');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Manish', 'Non-AC','M','Hyderabad', 'Bengaluru',500, 'Sitting');
insert into passenger(Passenger_nam,Category,Gender,Boarding_City, Destination_City, Distance, Bus_Type) values ('Piyush', 'AC','M','Pune', 'Nagpur',700, 'Sitting');

insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 350, 770);
insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 500, 1100);
insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 600, 1320);
insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 700, 1540);
insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 1000, 2200);
insert into pricing(Bus_Type, Distance, Price) values('Sleeper', 1200, 2640);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 350, 434);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 500, 620);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 600, 744);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 700, 868);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 1000, 1240);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 1200, 1488);
insert into pricing(Bus_Type, Distance, Price) values('Sitting', 1500, 1860);

-- 	Find the minimum ticket price for Sleeper Bus. --
select min(Price) from Pricing where Bus_Type = 'Sleeper';     

-- Select passenger names whose names start with character 'S' --

select Passenger_nam from Passenger where name not like '%S%';  

--	How many females and how many male passengers travelled for a minimum distance of 600 KM s? --

select count(M and F) from Passenger where Distance <= 600;

-- What is the passenger name and his/her ticket price who travelled in Sitting bus  for a distance of 1000 KM s   --
select Passenger_nam from Passenger where Distance = 1000  

