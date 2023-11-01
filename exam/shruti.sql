--  1. table 

create table customers(
    customer_id int primary key,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    password varchar(255)
);

insert into customers(customer_id,first_name,last_name,email,password) 
values
(0001,"deepika","sharma","deepika@gmail.com","1"),
(0002,"priya","shah","priya@gmail.com","2"),
(0003,"kaveri","jaiswal","kaveri@gmail.com","3"),
(0004,"deepika","sharma","deepika@gmail.com","4");


--  2. table

create table products(
    product_id int primary key,
    product_name varchar(255),
    product_description varchar(255),
    product_price decimal(10,2),
    product_quantity  int,
    category varchar(255)
);

insert into products(product_id,product_name,product_description,product_price,product_quantity,category)
values
(10,"abc","t-shirts","550",200,"A"),
(20,"xyz","top","770",1000,"B"),
(30,"pqr","jeans","850",2200,"C"),
(40,"stu","lycra t-shirts","1250",2000,"D");


--  3. table
create table orders(
    order_id int primary key,
    customer_id int,
    order_date date,
    total_price decimal(10),

    foreign key (customer_id) references customers(customer_id)


);

insert into orders(order_id,customer_id,order_date,total_price)
values
(1,0001,'2004-09-12',10000),
(3,0002,'2004-10-16',20000),
(0001,0001,'2004-02-14',30000),
(19002,0004,'2004-05-1',10000);


--  4. table
create table order_items(
    order_item_id int primary key,
    order_id int ,
    product_id int ,
    quantity int,
    price decimal(10,2),

    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);


insert into order_items(order_item_id,order_id,product_id,quantity,price)values
(1001,0003,10,100,10000),
(1002,0001,40,200,15000),
(1003,19001,20,300,20000),
(1004,19002,10,400,40000);



4.answer :-
-----------------

select * from customers;            

+-------------+------------+-----------+-------------------+----------+
| customer_id | first_name | last_name | email             | password |
+-------------+------------+-----------+-------------------+----------+
|           1 | deepika    | sharma    | deepika@gmail.com | 1        |
|           2 | priya      | shah      | priya@gmail.com   | 2        |
|           3 | kaveri     | jaiswal   | kaveri@gmail.com  | 3        |
|           4 | deepika    | sharma    | deepika@gmail.com | 4        |
+-------------+------------+-----------+-------------------+----------+

5. answer :-
---------------------

+------------+--------------+---------------------+---------------+------------------+----------+
| product_id | product_name | product_description | product_price | product_quantity | category |
+------------+--------------+---------------------+---------------+------------------+----------+
|         10 | abc          | t-shirts            |        550.00 |              200 | A        |
|         20 | xyz          | top                 |        770.00 |             1000 | B        |
|         30 | pqr          | jeans               |        850.00 |             2200 | C        |
|         40 | stu          | lycra t-shirts      |       1250.00 |             2000 | D        |
+------------+--------------+---------------------+---------------+------------------+----------+


6. answer :-
-------------------

+----------+-------------+------------+-------------+
| order_id | customer_id | order_date | total_price |
+----------+-------------+------------+-------------+
|        1 |           1 | 2004-02-14 |       30000 |
|        3 |           2 | 2004-10-16 |       20000 |
|    19001 |           1 | 2004-09-12 |       10000 |
|    19002 |           4 | 2004-05-01 |       10000 |
+----------+-------------+------------+-------------+

7. answer :-
---------------

+---------------+----------+------------+----------+----------+
| order_item_id | order_id | product_id | quantity | price    |
+---------------+----------+------------+----------+----------+
|          1001 |        3 |         10 |      100 | 10000.00 |
|          1002 |        1 |         40 |      200 | 15000.00 |
|          1003 |    19001 |         20 |      300 | 20000.00 |
|          1004 |    19002 |         10 |      400 | 40000.00 |
+---------------+----------+------------+----------+----------+

8. answer :-

select * from orders.order_id,orders.customer_id,orders.order_date,orders.total_price,
customers.customer_id,customers.first_name,customer_id.last_name,customers.email,customers.password,
products.product_id,products.product_name,products.product_description,products.product_price,products.product_quantity,products.category 
inner join orders on   customers.customer_id orders.customer_id
inner join products on order_items.product_id = products.product_id;



9. answer :-

update products set product_quantity = 55000 where product_id = 30;

+------------+--------------+---------------------+---------------+------------------+----------+
| product_id | product_name | product_description | product_price | product_quantity | category |
+------------+--------------+---------------------+---------------+------------------+----------+
|         10 | abc          | t-shirts            |        550.00 |              200 | A        |
|         20 | xyz          | top                 |        770.00 |             1000 | B        |
|         30 | pqr          | jeans               |        850.00 |            55000 | C        |
|         40 | stu          | lycra t-shirts      |       1250.00 |             2000 | D        |
+------------+--------------+---------------------+---------------+------------------+----------+

10. answer :-
------------------
delete from orders where order_id = 19001;

11. answer :-
----------------
select * from customers where as email;

12. answer :-

select * from products where category = "A" order by product_price;

+------------+--------------+---------------------+---------------+------------------+----------+
| product_id | product_name | product_description | product_price | product_quantity | category |
+------------+--------------+---------------------+---------------+------------------+----------+
|         10 | abc          | t-shirts            |        550.00 |              200 | A        |
+------------+--------------+---------------------+---------------+------------------+----------+

