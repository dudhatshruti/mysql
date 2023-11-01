create table Salesman_Master(
SalesmanNo  varchar(6) primary key,
SalesmanName varchar(20) not null,
Addressl varchar(30) not null,
Address2 varchar(30),
City     varchar(20),
PinCode  int(8),
State    varchar(20),
salamt   float(8,2),
tgttoget float(6,2),
ytdsales float(6,2),  
remarks  varchar(60)
);


insert into Salesman_Master(
SalesmanNo,  
SalesmanName,
Addressl ,
Address2 ,
City    , 
PinCode  ,
State    ,
salamt   ,
tgttoget ,
ytdsales ,
remarks ) 
values
("S00001" ,"Aman"  ,"A/14" ,"Worli"  ,   "Mumbai",400002,"Maharashtra",3000,100,50,"Good"),
("S00002" ,"Omkar" ,"65" ,  "Nariman " , "Mumbai",400001,"Maharashtra",3000,200,100,"Good"),
("S00003" ,"Raj"   ,"P-7" , "Bandra"  ,  "Mumbai",400032,"Maharashtra",3000,200,100,"Good"),
("S00004" ,"Ashish","A/5" , "Juhu" ,     "Mumbai",400044,"Maharashtra",3500,200,150,"Good");