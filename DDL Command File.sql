DROP DATABASE IF EXISTS assignment2;
CREATE DATABASE IF NOT EXISTS assignment2;
use assignment2;
DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Building_the_pizza;
DROP TABLE IF EXISTS Order_Pizza;
DROP TABLE IF EXISTS Receipt;
DROP TABLE IF EXISTS Customer;

-- Create the customer table
CREATE TABLE Customer (
	Cust_id				CHAR(45) NOT NULL,
    Phone_number 		INTEGER NULL,
    CONSTRAINT Customer_PK PRIMARY KEY (Cust_id)
    );

-- Create the Order_Pizza table    
CREATE TABLE Order_Pizza (
	Order_id 			INTEGER NOT NULL,
    Date				DATETIME,
    Size				CHAR(6) NOT NULL,
    Cust_Name			CHAR(45) NOT NULL,
    CONSTRAINT Order_Pizza_PK PRIMARY KEY (Order_id),
    CONSTRAINT Order_Pizza_FK FOREIGN KEY (Cust_name) REFERENCES Customer(Cust_id)
    );
    
-- Create the Receipt table
CREATE TABLE Receipt (
	Receipt_id			CHAR(45) NOT NULL,
    Taxes				DECIMAL(5) NULL,
    Total				CHAR (12) NOT NULL,
    CONSTRAINT Receipt_PK PRIMARY KEY (Receipt_id)
    );
    
-- CREATE the Building_the_pizza table
CREATE TABLE Buiding_the_pizza (
	Slices 				INTEGER NOT NULL,
    Size				CHAR(6) NOT NULL,
    Receipt_name_id		CHAR(45) NOT NULL,
    CONSTRAINT Receipt_FK FOREIGN KEY (Receipt_name_id) REFERENCES Receipt(Receipt_id)
    );    

-- CREATE the Invoice table
CREATE TABLE Invoice (
	Order_number_id 	INTEGER NOT NULL,
    Receipt_name_id		CHAR(45) NOT NULL,
    CONSTRAINT Invoice_PK PRIMARY KEY (Order_number_id, Receipt_name_id),
    CONSTRAINT Invoice_FK1 FOREIGN KEY (Order_number_id) REFERENCES Order_Pizza (Order_id),
    CONSTRAINT Invoice_FK2 FOREIGN KEY (Receipt_name_id) REFERENCES Receipt (Receipt_id)
    );
    