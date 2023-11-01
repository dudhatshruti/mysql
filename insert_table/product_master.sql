create table product_master(
    PROCUCTNO varchar(6),
    DESCRIPTION varchar(15),
    PROFITPERCENT int(4),
    UNITMEASURE varchar(10),
    QTYONHAND int(8),
    REORDERLVL int(8),
    SELLPRICE int(8),
    COSTPRICE int(8)
);

insert into product_master(PROCUCTNO,DESCRIPTION,PROFITPERCENT,UNITMEASURE,QTYONHAND,REORDERLVL,SELLPRICE,COSTPRICE)
values("p0001","t-shirt",5,"piece",200,50,350,250),
("p0345","shirts",6,"piece",150,50,500,350),
("p06734","cotton jeans",5,"piece",100,20,600,450),
("p07865","jeans",5,"piece",100,20,750,500),
("p07868","trousers",2,"piece",150,50,850,550),
("p07885","pull overs",5,"piece",80,30,700,450),
("p07965"," Denim shirts",4,"piece",100,40,350,250),
("p07975","Lycra Tops",5,"piece",70,30,300,175),
("p08865","skirts",5,"piece",75,30,450,300);


+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
| PROCUCTNO | DESCRIPTION   | PROFITPERCENT | UNITMEASURE | QTYONHAND | REORDERLVL | SELLPRICE | COSTPRICE |
+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
| p0001     | t-shirt       |             5 | piece       |       200 |         50 |       350 |       250 |
| p0345     | shirts        |             6 | piece       |       150 |         50 |       500 |       350 |
| p06734    | cotton jeans  |             5 | piece       |       100 |         20 |       600 |       450 |
| p07865    | jeans         |             5 | piece       |       100 |         20 |       750 |       500 |
| p07868    | trousers      |             2 | piece       |       150 |         50 |       850 |       550 |
| p07885    | pull overs    |             5 | piece       |        80 |         30 |       700 |       450 |
| p07965    |  Denim shirts |             4 | piece       |       100 |         40 |       350 |       250 |
| p07975    | Lycra Tops    |             5 | piece       |        70 |         30 |       300 |       175 |
| p08865    | skirts        |             5 | piece       |        75 |         30 |       450 |       300 |
+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+


--  d. list of various product available from the product_master

select DESCRIPTION from product_master;

+---------------+
| DESCRIPTION   |
+---------------+
| t-shirt       |
| shirts        |
| cotton jeans  |
| jeans         |
| trousers      |
| pull overs    |
|  Denim shirts |
| Lycra Tops    |
| skirts        |
+---------------+

-- change the cost price of trousers to rs.950.

update product_master set COSTPRICE = 950 where DESCRIPTION ='trousers';

select * from product_master where COSTPRICE = 950;
+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
| PROCUCTNO | DESCRIPTION   | PROFITPERCENT | UNITMEASURE | QTYONHAND | REORDERLVL | SELLPRICE | COSTPRICE |
+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
| p0001     | t-shirt       |             5 | piece       |       200 |         50 |       350 |       250 |
| p0345     | shirts        |             6 | piece       |       150 |         50 |       500 |       350 |
| p06734    | cotton jeans  |             5 | piece       |       100 |         20 |       600 |       450 |
| p07865    | jeans         |             5 | piece       |       100 |         20 |       750 |       500 |
| p07868    | trousers      |             2 | piece       |       150 |         50 |       850 |       950 |
| p07885    | pull overs    |             5 | piece       |        80 |         30 |       700 |       450 |
| p07965    |  Denim shirts |             4 | piece       |       100 |         40 |       350 |       250 |
| p07975    | Lycra Tops    |             5 | piece       |        70 |         30 |       300 |       175 |
| p08865    | skirts        |             5 | piece       |        75 |         30 |       450 |       300 |
+-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
