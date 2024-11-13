SELECT COUNT(*) as Total, Title, FirstName from employees group BY Title,FirstName;

SELECT * FROM employees WHERE (City = 'calgary' and PostalCode ='T3B 1Y7') OR (City = 'Lethbridge' AND PostalCode = 'T1K 5N8');

SELECT * FROM employees WHERE (City = 'calgary' and PostalCode IN ( 'T3B 1Y7','T3B 1Y7')) OR (City = 'Lethbridge' AND PostalCode IN('T1K 5N8','T1H 1Y8'));


/* data collect from 2 tables;*/
SELECT invoices.Customer_id , BillingCity, BillingState,BillingPostalCode,customers.FirstName,customers.Address FROM customers,invoices WHERE City in ('paris','Berlin') AND customers.SupportRep_id  = invoices.Customer_id;

/* data collect from 2 tables with join this is the best way;*/
SELECT invoices.Customer_id , BillingCity, BillingState,BillingPostalCode,customers.FirstName,customers.Address FROM customers join invoices on customers.SupportRep_id  = invoices.Customer_id WHERE City in ('paris','Berlin');

SELECT Customer_id, SUM(Total) FROM invoices GROUP BY Customer_id;

SELECT Customer_id, SUM(Total) FROM invoices GROUP BY Customer_id HAVING SUM(Total) >40;

/* subselect: query from another query */
SELECT * FROM (SELECT Customer_id, SUM(Total) as Total FROM invoices GROUP BY Customer_id) as balance WHERE Total >30; 