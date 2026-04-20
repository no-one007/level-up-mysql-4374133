ALTER TABLE orders
ADD CONSTRAINT idx_orders_customerid_fk
  FOREIGN KEY (CustomerID)
  REFERENCES customer (CustomerID),
ADD CONSTRAINT idx_orders_empid_fk 
	FOREIGN KEY (EmpID) 
	REFERENCES employee (EmpID),
ADD CONSTRAINT idx_orders_prodnumber_fk 
	FOREIGN KEY (ProdNumber) 
	REFERENCES product (ProdNumber);

#Now as we have created multiple tables, lets establish the relationship between orders table and the other created table.