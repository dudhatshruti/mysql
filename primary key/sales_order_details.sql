create table SALES_ORDER_DETAILS(
    ORDERN0    varchar(6),
    productNo  varchar(6),
    qtyordered int(8),
    QTYDISP    int(8),
    productrate float(10,2),
       foreign key (ORDERN0) references SALES_ORDER(ORDERN0),
       
       foreign key (productNo) references product_master(productNo)

  );


insert into SALES_ORDER_DETAILS(
ORDERN0 ,   
productNo,  
qtyordered, 
QTYDISP,    
productrate
  ) values
("019001","p00001",4 ,4  ,525),
("019001","p07965",2 ,1  ,8400),
("019001","p07885",2 ,1  ,5250),
("019002","p00001",10,0  ,525),
("046865","p07868",3, 3  ,3150),
("046865","p07885",3, 1  ,5250),
("046865","p00001",10,10 ,525),
("046865","p0345" ,4, 4  ,1050),
("019003","p0345", 2, 2  ,1050),
("019003","p06734",1, 1  ,12000),
("046866","p07965",1, 0  ,8400),
("046866","p07975",1, 0  ,1050),
("019008","p00001",10,5  ,525),
("019008","p07975",5, 3  ,1050);

select * from SALES_ORDER_DETAILS;

desc SALES_ORDER_DETAILS;