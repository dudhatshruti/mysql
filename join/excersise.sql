
a. select  client_master.NAME,product_master.description,sales_order.ORDERN0 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
inner join  product_master on sales_order_details.productNo = product_master.productNo  where name = "IVAN bayross"

+--------------+--------------+---------+
| NAME         | description  | ORDERN0 |
+--------------+--------------+---------+
| Ivan Bayross | T-Shirts     | 019001  |
| Ivan Bayross | Denim Shirts | 019001  |
| Ivan Bayross | Pull Overs   | 019001  |
| Ivan Bayross | Shirts       | 019003  |
| Ivan Bayross | Cotton jeans | 019003  |
+--------------+--------------+---------+



g.   select sales_order.CLIENTN0, sales_order_details.productNo,product_master.description,sum(qtyordered)"Qty_ordered"
from sales_order,sales_order_details,product_master,CLIENT_MASTER  where sales_order.ORDERN0 = sales_order_details.ORDERN0 and
sales_order_details.productNo = product_master.productNo and sales_order.CLIENTN0 = CLIENT_MASTER.CLIENTN0 group by sales_order.CLIENTN0,
sales_order_details.productNo,
product_master.description
having sales_order.CLIENTN0= 'c00001'
or sales_order.CLIENTN0 = 'c00002';

+----------+-----------+--------------+-------------+
| CLIENTN0 | productNo | description  | Qty_ordered |
+----------+-----------+--------------+-------------+
| c00001   | p00001    | T-Shirts     |           4 |
| c00001   | p07965    | Denim Shirts |           2 |
| c00001   | p07885    | Pull Overs   |           2 |
| c00001   | p0345     | Shirts       |           2 |
| c00001   | p06734    | Cotton jeans |           1 |
| c00002   | p00001    | T-Shirts     |          10 |
+----------+-----------+--------------+-------------+

f.

select sales_order_details.productNo,product_master.productNo,sum(qtyordered)"Qty Ordered" from sales_order,product_master,sales_order_details,CLIENT_MASTER
where sales_order.ORDERN0 = sales_order_details.ORDERN0 and
product_master.productNo = sales_order_details.productNo and
client_master.CLIENTN0 = sales_order.CLIENTN0 and(CLIENT_MASTER.NAME = 'Ivan Bayross' or CLIENT_MASTER.name = 'deepak sharma')
group by sales_order_details.productNo,product_master.productNo;

+-----------+-----------+-------------+
| productNo | productNo | Qty Ordered |
+-----------+-----------+-------------+
| p00001    | P00001    |           4 |
| p07965    | P07965    |           2 |
| p07885    | P07885    |           2 |
| p0345     | P0345     |           2 |
| p06734    | P06734    |           1 |
+-----------+-----------+-------------+

e. select sd.productNo,sd.orderNo from sales_order_details sd,sales_order s,Product_Master p
where s.orderNo=sd.orderNo and p.productNo=sd.productNo and sd.qtyOrdered<5 and p.description='Pull Overs';

select sales_order_details.productNo,sales_order_details.ORDERN0
from sales_order_details,sales_order,product_master
where sales_order.ORDERN0 = sales_order_details.ORDERN0
and product_master.productNo = sales_order_details.productNo
and sales_order_details.qtyordered<5 and product_master.description = 'pull overs';

+-----------+---------+
| productNo | ORDERN0 |
+-----------+---------+
| p07885    | 019001  |
| p07885    | 046865  |
+-----------+---------+


d.
select  distinct sales_order.CLIENTN0,CLIENT_MASTER.CLIENTN0 from sales_order_details,sales_order,product_master,CLIENT_MASTER
where product_master.productNo = sales_order_details.productNo and
sales_order.CLIENTN0 = client_master.CLIENTN0 and
 product_master.description = 'Trousers';


 c.
 select distinct Product_Master.description,Product_Master.productNo from Product_Master,sales_order_details where Product_Master.productNo=sales_order_details.productNo;
 +--------------+-----------+
| description  | productNo |
+--------------+-----------+
| T-Shirts     | P00001    |
| Shirts       | P0345     |
| Cotton jeans | P06734    |
| Trousers     | P07868    |
| Pull Overs   | P07885    |
| Denim Shirts | P07965    |
| Lycra Tops   | P07975    |
+--------------+-----------+

b.
select sales_order_details.productNo,product_master.description,sum(sales_order_details.qtyOrdered)
from sales_order_details ,sales_order ,Product_Master 
where product_master.productNo=sales_order_details.productNo and sales_order.ORDERN0=sales_order_details.ORDERN0 
group by sales_order_details.productNo,product_master.description;

+-----------+--------------+-------------------------------------+
| productNo | description  | sum(sales_order_details.qtyOrdered) |
+-----------+--------------+-------------------------------------+
| p00001    | T-Shirts     |                                  34 |
| p07965    | Denim Shirts |                                   3 |
| p07885    | Pull Overs   |                                   5 |
| p0345     | Shirts       |                                   6 |
| p06734    | Cotton jeans |                                   1 |
| p07868    | Trousers     |                                   3 |
| p07975    | Lycra Tops   |                                   6 |
+-----------+--------------+-------------------------------------+