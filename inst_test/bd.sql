CREATE DATABASE testing;
USE testing;
CREATE TABLE object_type(
     ID int,
     name varchar(20)
);
CREATE TABLE state(
       ID int,
       name varchar(20)
);
CREATE TABLE result_type(
       ID int,
       name varchar(20)
);
CREATE TABLE positions(
       ID int,
       name varchar(15)
);
CREATE TABLE employees(
       ID int,
       name varchar(30),
       shortname varchar(5),
       password varchar(20),
       positionsID int,
       FOREIGN KEY (positionsID) REFERENCES positions(ID)
);
CREATE TABLE project(
       ID int,
       name varchar(20),
       version varchar(10)
);
CREATE TABLE object(
       object_typeID int,
       projectID int,
       employeesID int,
       result_typeID,
       name varchar(30),
       comment varchar(40),       
       FOREIGN KEY (employeesID) REFERENCES employees (ID)
       FOREIGN KEY (employeesID) REFERENCES employees (ID)
       FOREIGN KEY (projectID) REFERENCES project (ID)
       FOREIGN KEY (object_typeID) REFERENCES object_type (ID)
);




