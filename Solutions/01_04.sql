#SELECT ProdNumber FROM transactions WHERE ProdName LIKE '';

#UPDATE transactions, product_catalog
#SET transactions.ProdName = product_catalog.ProdName
#WHERE transactions.ProdNumber = product_catalog.ProdNumber;

UPDATE transactions t 
JOIN product_catalog p
ON t.ProdNumber = p.ProdNumber
SET t.ProdName = p.ProdName;

#Fill the empty feilds of Prodname using ProdNumber