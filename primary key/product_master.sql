create table product_master(
    productNo  varchar(6),
    description  varchar (15),
    ProfitPercent float(4,2),
    UnitMeasure  varchar (10),
    QtyOnHand   float(8),
    ReorderLv1    float(8),
    sellPrice    float(8,2),
    costPrice    float(8,2),
    primary key (productNo)
 );        
 
 insert into product_master(
       productNo,
       description,
       ProfitPercent,
       UnitMeasure,
       QtyOnHand,
       ReorderLv1,
       sellPrice,
       costPrice
) 
values 
("P00001","T-Shirts"    ,5,"Piece",200,50,300,250),
("P0345" ,"Shirts"      ,6,"Piece",150,50,500,350),
("P06734","Cotton jeans",5,"Piece",100,20,600,450),
("P07865","Jeans"       ,5,"Piece",100,20,750,500),
("P07868","Trousers"    ,2,"Piece",150,50,850,550),
("P07885","Pull Overs",2.5,"Piece",80 ,30,700,450),
("P07965","Denim Shirts",4,"Piece",100,40,350,250),
("P07975","Lycra Tops"  ,5,"Piece",70 ,30,300,175),
("P08865","Skirts"      ,5,"Piece",75 ,30,450,300);
        
select * from product_master;     
desc product_master;
   