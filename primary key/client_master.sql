-- 1. client_master table

create database shruti3;

use shruti3;

create table CLIENT_MASTER(
     CLIENTN0 varchar (6) primary key,
     NAME     varchar (20) not null,
     ADDRESS1 varchar (30),
     ADDRESS2 varchar (30),
     CITY     varchar (15),
     Pincode  int      (8),
     STATE    varchar (15),
     BALDUE    int (10)
            
    );
    
    insert into CLIENT_MASTER(
    CLIENTN0,
    NAME,
    ADDRESS1,
    ADDRESS2,
    CITY,
    Pincode,
    STATE,
    BALDUE
) 
values ("C00001","Ivan Bayross","A-6 royal plaza","kamnavala chamber" ,"Mumbai", 400054 ,"Maharashtra" ,15000),
       ("C00002" ,"Mamta Muzumdar","A-9 nonstreet","goldan temple","Madras", 780001," Tamil Nadu" ,0),
       ("C00003" ,"Chhaya Bankar", "A-10 royal plaza","kamnavala chamber","Mumbai" ,400057 ,"Maharashtra" ,5000),
       ("C00004" ,"Ashwini Joshi" ,"A-12 new circle","near tower","Bangalore" ,560001 ,"Kamataka", 0),
       ("C00005", 'Hansel Colaco',"A-60 silver" ,"near zoo beach",' Mumbai', 400060, 'Maharashtra' ,2000),
       ('C00006' ,'Deepak Sharma',"A-80 balaji","near gandhi tower",'Mangalore' ,560050 ,'Karnataka' ,0);
   

    select *from client_master;
    desc client_master;