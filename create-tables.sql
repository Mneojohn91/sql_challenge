DROP TABLE IF EXISTS "Customers";
CREATE TABLE "public"."Customers" (
    "customerid" serial primary key,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "gender" character varying NOT NULL,
    "address" character varying(200) NOT NULL,
    "phone" character varying(20) NOT NULL,
    "email" character varying(100) NOT NULL,
    "city" character varying(20) NOT NULL,
    "country" character varying(50) NOT NULL
) ;


DROP TABLE IF EXISTS "Employees";
CREATE TABLE "public"."Employees" (
    "employeeid"  serial primary key,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "email" character varying(100) NOT NULL,
    "jobtitle" character varying(100) NOT NULL);

DROP TABLE IF EXISTS "Orders";
CREATE TABLE "public"."Orders" (
    "orderid" serial primary key,
    "productid" integer NOT NULL,
    "paymentid" integer NOT NULL,
    "fulfilledbyemployeeid" integer NOT NULL,
    "daterequired" date NULL,
    "dateshipped" date NULL,
    "status" character varying(20) NOT NULL);

ALTER TABLE "public"."Orders"
ADD FOREIGN KEY ("fulfilledbyemployeeid") REFERENCES "Orders" ("orderid");
ALTER TABLE "public"."Orders"
ADD FOREIGN KEY ("paymentid") REFERENCES "Orders" ("orderid");
ALTER TABLE "public"."Orders"
ADD FOREIGN KEY ("productid") REFERENCES "Orders" ("orderid");

DROP TABLE IF EXISTS "Payments";
CREATE TABLE "public"."Payments" (
    "customerid" integer,
    "paymentid" serial primary key,
    "paymentdate" date NULL,
    "amount" numeric);


DROP TABLE IF EXISTS "Products";
CREATE TABLE "public"."Products" (
    "productid" serial primary key,
    "productname" character varying(100) NOT NULL,
    "description" character varying(300) NOT NULL,
    "buyprice" numeric NOT NULL);
