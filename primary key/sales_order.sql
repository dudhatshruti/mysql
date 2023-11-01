create table SALES_ORDER(
    ORDERN0    varchar(6) primary key,
    CLIENTN0   varchar(6) ,
    ORDERDATE  date not null,
    SalesmanNo  varchar (6),
    DELYTYPE    char (1),
    BILLYN      char (1),
    DELYDATE     date,
    ORDERSTATUS  varchar (10),
      
        foreign key (CLIENTN0) references client_master(CLIENTN0),
      
        foreign key (SalesmanNo) references Salesman_Master(SalesmanNo)

);

INSERT INTO SALES_ORDER (ORDERN0, CLIENTN0, ORDERDATE, SalesmanNo, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
VALUES
("019001", "c00001", '2004-06-12', "s00001", "f", "n", '2002-07-20', "Inprocess"),
("019002", "c00002", '2004-06-25', "s00002", "p", "n", '2002-06-27', "cancelled"),
("046865", "c00003", '2004-02-18', "s00003", "f", "y", '2002-02-20', "fulfilled"),
("019003", "c00001", '2004-04-03', "s00001", "f", "y", '2002-04-07', "fulfilled"),
("046866", "c00004", '2004-05-20', "s00002", "p", "n", '2002-05-22', "cancelled"),
("019008", "c00005", '2004-05-24', "s00004", "f", "n", '2002-07-26', "Inprocess");



