# Add transaction as follows:
# Employee: Kendra Morales
# Customer: Hashim Colerick
# Product: Mineral Water - Orange - 32oz - case
# Order type: Retail
# Quantity: 15, no discount
# Date: 5/4/2023


#query to autoincrement the OrderNum to maintain consistency
ALTER TABLE orders
CHANGE COLUMN OrderNum
OrderNum INT NOT NULL AUTO_INCREMENT;


#query to retrive the required details and store them in variables
SELECT EmpID FROM employee 
WHERE EmployeeName = 'Kendra Morales' INTO @empid;
SELECT CustomerID FROM customer 
WHERE CustName = 'Hashim Colerick' INTO @customerid;
SELECT ProdNumber FROM product 
WHERE ProdName = 'Mineral Water - Orange - 32oz - case' INTO @prodnumber;

#verify
SELECT @empid, @customerid, @prodnumber;

#insert the values into the order table
INSERT INTO orders VALUES (DEFAULT, '5/24/2023', @empid, @customerid,
@prodnumber, 'Retail', 22, 0);

SELECT * FROM orders WHERE OrderDate LIKE '%2023';
