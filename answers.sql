USE salesdb;

-- Question 1: Get employee details with office information using INNER JOIN
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;
--Result: Shows all employees who have a vaild office assignment



-- Question 2: Get product details with product line information using LEFT JOIN
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;
--Result: Shows all products, including those that might not have a matching product line



-- Question 3: Get order details with customer information using RIGHT JOIN (first 10 orders)
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
--Result: Shows the first 10 orders, including those that might not have valid customer records

