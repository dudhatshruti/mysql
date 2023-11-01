use classicmodels;

select * from employees;

select * from employees where jobTitle = 'Sales Rep' or employeeNumber between 1200 and 1500;

select * from employees where officeCode >= 2 and jobTitle!= 'sales Rep';

select * from customers;

select * from customers where country not in ("USA");

select * from customers where customerNumber not between 150 and 200;

-- select lastName,firstName from employees  order by "nameof the employees";

select * from customers where city in ("Singapore","Liverpool","NYC");

select * from customers where contactFirstName = "SMITH";

select * from employees where officeCode  in (1,3,5);

select * from customers where creditLimit between 50000 and 95000;

select * from employees where officeCode not in (1,3);

select * from customers where contactfirstName like 'S%';

select * from customers where contactfirstName like 'S%H';

select * from customers where contactfirstName like '_____' and 'S%';

select * from customers where contactfirstName like '________';

select * from customers where contactfirstName like 'a%e';

select * from customers where contactfirstName like 'ee%';


