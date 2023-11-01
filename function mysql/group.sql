1. select avg(baldue) from table1_client;

2. select count(*) from table1_client;
+----------+
| count(*) |
+----------+
|        5 |
+----------+

3. select max(COSTPRICE) from product_master;
+----------------+
| max(COSTPRICE) |
+----------------+
|            950 |
+----------------+

select min(COSTPRICE) from product_master;
+----------------+
| min(COSTPRICE) |
+----------------+
|            175 |
+----------------+

select sum(COSTPRICE) from product_master;
+----------------+
| sum(COSTPRICE) |
+----------------+
|           3675 |
+----------------+

select median(COSTPRICE) from product_master;


