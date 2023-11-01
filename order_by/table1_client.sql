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


-- ===== > ascending order :-
select * from table1_client order by name;

+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| clientNo | name           | address1        | address2        | city     | pincode | state      | baldue |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+
| c00004   | ashwini joshi  | a-104,borivali  | a-104,borivali  | banglore |  560001 | karnataka  |      0 |
| c00003   | chhaya bankar  | A-103,borivali  | A-103,borivali  | mumbai   |  400057 | maharastra |   5000 |
| c00006   | deepak sharma  | a-106,borivali  | a-106,borivali  | banglore |  560050 | karnataka  |      0 |
| c00001   | IVAN bayross   | A-101,borivalli | A-101,borivalli | mumbai   |  400054 | maharastra |   1000 |
| c00002   | mamta          | A-102,borivali  | A-102,borivali  | madras   |  780001 | tamilnadu  |      0 |
+----------+----------------+-----------------+-----------------+----------+---------+------------+--------+


--  ===== > decending order :-

select * from table1_client order by name desc;