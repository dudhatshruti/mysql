

use shruti;

create table emp(
	eid varchar(5),
    ename varchar(20),
    esal int
);

create table material(
	mid varchar(5),
    mname varchar(20),
    msal int
);

insert into emp(eid,ename,esal)values("1","shruti",20000),("2","sweta",30000),("3","twinkle",40000);
select * from emp;

insert into material(mid,mname,msal)values("1","skill",20000),("3","qode",30000),("4","student",40000);
select * from material; 

 -- inner join 
 select * from emp inner join material on emp.eid = material.mid;

-- left join 
select * from emp left join material on emp.eid = material.mid;

-- rigth join
select * from emp right join material on emp.eid = material.mid; 

-- full join
select * from emp cross join material; 

