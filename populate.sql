INSERT INTO "Customers" ("firstname", "lastname", "gender", "address", "phone", "email", "city","country") VALUES

('John',	'Hibert',	'Male',	'284 chaucer st',	'084789657',	'john@gmail.com',	'Johannesburg',	'South Africa'),
('Thando',	'Sithole',	'Female',	'240 Sect 1',	'0794445584',	'thando@gmail.com',	'Cape Town',	'South Africa'),
('Leon',	'Glen',	'Male',	'81 Everton Rd,Gillits',	'0820832830',	'Leon@gmail.com',	'Durban',	'South Africa'),
('Charl',	'Muller',	'Male',	'290A Dorset Ecke',	'+44856872553',	'Charl.muller@yahoo.com',	'Berlin',	'Germany'),
('Julia',	'Stein',	'Female',	'2 Wernerring',	'+448672445058',	'Js234@yahoo.com',	'Frankfurt',	'Germany');

INSERT INTO "Employees" ("firstname", "lastname", "email", "jobtitle") VALUES
('Kani',	'Matthew',	'mat@gmail.com',	'Manager'),
('Lesly',	'Cronje',	'LesC@gmail.com',	'Clerk'),
('Gideon',	'Maduku',	'm@gmail.com',	'Accountant');

INSERT INTO "Orders" ("productid", "paymentid", "fulfilledbyemployeeid", "daterequired", "dateshipped", "status") VALUES

(1,	1,	2,	'2018-05-09',	NULL,	'Not shipped'),
(1,	2,	2,	'2018-04-09',	'2018-03-09',	'Shipped'),
(3,	3,	3,	'2018-06-09',	NULL,	'Not shipped');

INSERT INTO "Payments" ( "customerid", "paymentdate", "amount") VALUES
(1,	'2018-01-09',	150.75),
(5,	'2018-03-09',	150.75),
(4,	'2018-03-09',	700.60);

INSERT INTO "Products" ("productname", "description", "buyprice") VALUES
(	'Harley Davidson Chopper',	'This replica features working kickstand, front suspension, gear-shift lever',	150.75),
(	'Classic Car',	'Turnable front wheels, steering function',	550.75),
('Sports car',	'Turnable front wheels, steering function',	700.60);
