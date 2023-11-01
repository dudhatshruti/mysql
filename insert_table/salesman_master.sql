create table salesman_master(
    SALESMANNO varchar(6),
    SALESMANNAME varchar(20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE int(8),
    STATE varchar(20),
    SALAMT int(8),
    TGTTOGET int(6),
    YTDSALES int(6),
    REMARKS varchar(60)
);

insert into salesman_master(SALESMANNO,SALESMANNAME,ADDRESS1,ADDRESS2,CITY,PINCODE,STATE,SALAMT,TGTTOGET,YTDSALES,REMARKS) values("s00001","aman","A/14","Worli","mumbai",400002,"mahrastra",3000,100,50,"Good"),
("s00002","omkar","65","Nariman","mumbai",400001,"mahrastra",3000,200,100,"Good"),
("s00003","Raj","p-7","Bandra","mumbai",400032,"mahrastra",3000,200,100,"Good"),
("s00004","Ashish","A/5","Juhu","mumbai",400044,"mahrastra",3500,200,150,"Good");


+------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+
| SALESMANNO | SALESMANNAME | ADDRESS1 | ADDRESS2 | CITY   | PINCODE | STATE     | SALAMT | TGTTOGET | YTDSALES | REMARKS |
+------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+
| s00001     | aman         | A/14     | Worli    | mumbai |  400002 | mahrastra |   3000 |      100 |       50 | Good    |
| s00002     | omkar        | 65       | Nariman  | mumbai |  400001 | mahrastra |   3000 |      200 |      100 | Good    |
| s00003     | Raj          | p-7      | Bandra   | mumbai |  400032 | mahrastra |   3000 |      200 |      100 | Good    |
| s00004     | Ashish       | A/5      | Juhu     | mumbai |  400044 | mahrastra |   3500 |      200 |      150 | Good    |
+------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+


--  f. find the name of salesman who have a salary equal to rs.3000;

select SALESMANNAME , SALAMT from salesman_master where SALAMT = 3000; 

+--------------+--------+
| SALESMANNAME | SALAMT |
+--------------+--------+
| aman         |   3000 |
| omkar        |   3000 |
| Raj          |   3000 |
+--------------+--------+

--  change the city of salesman to pune;

update salesman_master set city = 'pune' where SALESMANNO = "s00001";
update salesman_master set city = 'pune' where SALESMANNO = "s00002";
update salesman_master set city = 'pune' where SALESMANNO = "s00003";
update salesman_master set city = 'pune' where SALESMANNO = "s00004";

+------------+--------------+----------+----------+------+---------+-----------+--------+----------+----------+---------+
| SALESMANNO | SALESMANNAME | ADDRESS1 | ADDRESS2 | CITY | PINCODE | STATE     | SALAMT | TGTTOGET | YTDSALES | REMARKS |
+------------+--------------+----------+----------+------+---------+-----------+--------+----------+----------+---------+
| s00001     | aman         | A/14     | Worli    | pune |  400002 | mahrastra |   3000 |      100 |       50 | Good    |
| s00002     | omkar        | 65       | Nariman  | pune |  400001 | mahrastra |   3000 |      200 |      100 | Good    |
| s00003     | Raj          | p-7      | Bandra   | pune |  400032 | mahrastra |   3000 |      200 |      100 | Good    |
| s00004     | Ashish       | A/5      | Juhu     | pune |  400044 | mahrastra |   3500 |      200 |      150 | Good    |
+------------+--------------+----------+----------+------+---------+-----------+--------+----------+----------+---------+
