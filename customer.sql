--create table for Customer
CREATE TABLE Customer (
    CustomerID int NOT NULL,
    CustomerName varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    PostalCode varchar(255) NOT NULL,
    Country varchar(255) NOT NULL,
    Phone varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    PRIMARY KEY (CustomerID)
);