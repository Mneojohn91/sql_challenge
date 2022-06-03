select * from "Customers";
select firstname, lastname
from "Customers";
select firstname,lastname
from "Customers"
where customerid =1;
update "Customers"
set firstname='Lerato',lastname='Mabito'
where customerid =1;
delete from "Customers" where customerid= 2;
select  distinct status as "distinct_status",count(fulfilledbyemployeeid)
from "Orders"
group by "distinct_status";
select max(amount) from "Payments";
select * from "Customers"
ORDER BY country ASC;
select * from "Products"
where buyprice between 100 and 600;
select * from "Customers"
where country='Germany' and city= 'Berlin';
select * from "Customers"
where city='Cape Town' or city='Durban';
select * from "Products"
where buyprice>500;
select sum(Amount) from "Payments";
select count(status) from "Orders"
where status='Shipped';
select avg(buyprice),avg(buyprice)/12 as "avg in dollars"from "Products";
select "Payments".customerid as "PayID","Customers".customerid as "CustomerID", "Payments".amount from "Payments"
inner join "Customers"
on "Payments".customerid="Customers".customerid ;
select productname from "Products"
where description='Turnable front wheels, steering function';

