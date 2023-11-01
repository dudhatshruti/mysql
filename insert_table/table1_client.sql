-- \ sql
-- \connect root@localhost:3306
-- \ show databases;
-- create database dbNAME;

-- use dbNAME;
-- show tables;

create table table1_client(
    clientNo varchar(6),
    name varchar(20),
    address1 varchar(30),
    address2 varchar(30),
    city varchar(15),
    pincode int(15),
    state varchar(10),
    baldue int(15)
);

-- insert data :-

insert into table1_client(clientNo,name,address1,address2,city,pincode,state,baldue) 
values("c00001","IVAN bayross","A-101,borivalli","A-101,borivalli","mumbai",400054,"maharastra",15000),
("c00002","mamta","A-102,borivali","A-102,borivali","madras",780001,"tamilnadu",0),
("c00003","chhaya bankar","A-103,borivali","A-103,borivali","mumbai",400057,"maharastra",5000),
("c00004","ashwini joshi","a-104,borivali","a-104,borivali","banglore",560001,"karnataka",0),
("c00005","hamsel colaco ","a-105,borivali","a-105,borivali","mumbai",40060,"maharastra",2000),
("c00006","deepak sharma ","a-106,borivali","a-106,borivali","banglore",560050,"karnataka",0);


+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| clientNo | name           | address1        | address2        | city     | pincode | state      | baldue |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| c00001   | IVAN bayross   | A-101,borivalli | A-101,borivalli | mumbai   |  400054 | maharastra |  15000 |
| c00002   | mamta          | A-102,borivali  | A-102,borivali  | madras   |  780001 | tamilnadu  |      0 |
| c00003   | chhaya bankar  | A-103,borivali  | A-103,borivali  | mumbai   |  400057 | maharastra |   5000 |
| c00004   | ashwini joshi  | a-104,borivali  | a-104,borivali  | banglore |  560001 | karnataka  |      0 |
| c00005   | hamsel colaco  | a-105,borivali  | a-105,borivali  | mumbai   |   40060 | maharastra |   2000 |
| c00006   | deepak sharma  | a-106,borivali  | a-106,borivali  | banglore |  560050 | karnataka  |      0 |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+


-- excercise on retrieving records from a table:-

-- 1. find out all client name :-

select name table1_client;  
+----------------+
| name           |
+----------------+
| IVAN bayross   |
| mamta          |
| chhaya bankar  |
| ashwini joshi  |
| hamsel colaco  |
| deepak sharma  |
+----------------+

--  3. list of name,city,sate of all client:-

select name,city from table1_client;

+----------------+----------+
| name           | city     |
+----------------+----------+
| IVAN bayross   | mumbai   |
| mamta          | madras   |
| chhaya bankar  | mumbai   |
| ashwini joshi  | banglore |
| hamsel colaco  | mumbai   |
| deepak sharma  | banglore |
+----------------+----------+

--  e. list of all client who  are located in mumbai

select name , city from  table1_client where city  = 'mumbai';

+----------------+--------+
| name           | city   |
+----------------+--------+
| IVAN bayross   | mumbai |
| chhaya bankar  | mumbai |
| hamsel colaco  | mumbai |
+----------------+--------+


-- ======> UPDATE QUERY :-

--  a. change the city of clientno 'C0005' to 'Bangalore';

update table1_client set city = 'Bangalore' where clientNo = 'c00005';

select * from table1_client where city = 'Bangalore';

+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+
| clientNo | name           | address1        | address2        | city      | pincode | state      | baldue |
+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+
| c00001   | IVAN bayross   | A-101,borivalli | A-101,borivalli | mumbai    |  400054 | maharastra |  15000 |
| c00002   | mamta          | A-102,borivali  | A-102,borivali  | madras    |  780001 | tamilnadu  |      0 |
| c00003   | chhaya bankar  | A-103,borivali  | A-103,borivali  | mumbai    |  400057 | maharastra |   5000 |
| c00004   | ashwini joshi  | a-104,borivali  | a-104,borivali  | banglore  |  560001 | karnataka  |      0 |
| c00005   | hamsel colaco  | a-105,borivali  | a-105,borivali  | Bangalore |   40060 | maharastra |   2000 |
| c00006   | deepak sharma  | a-106,borivali  | a-106,borivali  | banglore  |  560050 | karnataka  |      0 |
+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+



+----------+----------------+----------------+----------------+-----------+---------+------------+--------+
| clientNo | name           | address1       | address2       | city      | pincode | state      | baldue |
+----------+----------------+----------------+----------------+-----------+---------+------------+--------+
| c00005   | hamsel colaco  | a-105,borivali | a-105,borivali | Bangalore |   40060 | maharastra |   2000 |
+----------+----------------+----------------+----------------+-----------+---------+------------+--------+


-- change the baldue of clientNo 'c00001' to rs.1000.

update  table1_client set baldue = 1000 where clientNo = 'c00001';

select * from table1_client where baldue = 1000;

+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+
| clientNo | name           | address1        | address2        | city      | pincode | state      | baldue |
+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+
| c00001   | IVAN bayross   | A-101,borivalli | A-101,borivalli | mumbai    |  400054 | maharastra |   1000 |
| c00002   | mamta          | A-102,borivali  | A-102,borivali  | madras    |  780001 | tamilnadu  |      0 |
| c00003   | chhaya bankar  | A-103,borivali  | A-103,borivali  | mumbai    |  400057 | maharastra |   5000 |
| c00004   | ashwini joshi  | a-104,borivali  | a-104,borivali  | banglore  |  560001 | karnataka  |      0 |
| c00005   | hamsel colaco  | a-105,borivali  | a-105,borivali  | Bangalore |   40060 | maharastra |   2000 |
| c00006   | deepak sharma  | a-106,borivali  | a-106,borivali  | banglore  |  560050 | karnataka  |      0 |
+----------+----------------+-----------------+-----------------+-----------+---------+------------+--------+

+----------+--------------+-----------------+-----------------+--------+---------+------------+--------+
| clientNo | name         | address1        | address2        | city   | pincode | state      | baldue |
+----------+--------------+-----------------+-----------------+--------+---------+------------+--------+
| c00001   | IVAN bayross | A-101,borivalli | A-101,borivalli | mumbai |  400054 | maharastra |   1000 |
+----------+--------------+-----------------+-----------------+--------+---------+------------+--------+


-- ====> DELETE QUERY :-
--  specific row deleted :-
DELETE  from table1_client where clientNo = 'c00005';

+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| clientNo | name           | address1        | address2        | city     | pincode | state      | baldue |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| c00001   | IVAN bayross   | A-101,borivalli | A-101,borivalli | mumbai   |  400054 | maharastra |   1000 |
| c00002   | mamta          | A-102,borivali  | A-102,borivali  | madras   |  780001 | tamilnadu  |      0 |
| c00003   | chhaya bankar  | A-103,borivali  | A-103,borivali  | mumbai   |  400057 | maharastra |   5000 |
| c00004   | ashwini joshi  | a-104,borivali  | a-104,borivali  | banglore |  560001 | karnataka  |      0 |
| c00006   | deepak sharma  | a-106,borivali  | a-106,borivali  | banglore |  560050 | karnataka  |      0 |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+