use assignment2;
DELETE FROM Invoice;
DELETE FROM Buiding_the_pizza;
DELETE FROM Order_Pizza;
DELETE FROM Receipt;
DELETE FROM Customer;

-- Add Customer data
INSERT INTO Customer (Cust_id, Phone_number)
	VALUES ("06718920", NULL), ("06718921", NULL), ("06718922", NULL), ("06718923", NULL), ("06718924", NULL);
    
-- Add Order Pizza data
INSERT INTO Order_Pizza (Order_id, Date, Size, Cust_Name)
	VALUES ("712", date, "S", "06718920"), ("713", date, "M", "06718921"), ("714", date, "L", "06718922"), ("715", date, "XL", "06718923"), ("716", date, "2XL", "06718924");

-- Add Receipt data
INSERT INTO Receipt (Receipt_id, Taxes, Total)
	VALUES ("980", null, 100), ("981", null, 120), ("982", null, 130), ("983", null, 140), ("984", null, 150);
    
-- Add Building the pizza data
INSERT INTO Buiding_the_pizza (Slices, Size, Receipt_name_id)
	VALUES ("4", "S", 980), ("8", "M", 981), ("10", "L", 982), ("12", "XL", 983), ("14", "2XL", 984);
    
-- Add Invoice data
INSERT INTO Invoice (Order_number_id, Receipt_name_id)
	VALUES ("712", "980"), ("713", "981"), ("714", "982"), ("715", "983"), ("716", "983");