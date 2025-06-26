-- 1.    (1p) Get list Emails and Bussiness Phones of employees.
SELECT `E-mail Address`, `Business Phone` 
FROM employees;

-- 2.    (1p) Show the unique Categories in the Products table.
SELECT DISTINCT Category 
FROM products;

-- 3.    (1p) Find the unique Cities where customers are based in. Show the results in alphabet order.
SELECT DISTINCT `City`
FROM `customers`
ORDER BY `City` ASC;

-- 4.    (1p) Show all Suppliers whose Last Name starts with "H"
SELECT *
FROM `suppliers`
WHERE `Last Name` LIKE 'H%';

-- 5.    (1p) List the products with their Product Name, Category, List Price, and Standard Cost. Items are sorted by List Price and Standard Cost from the most expensive.
SELECT `Product Name`, `Category`, `List Price`, `Standard Cost`
FROM `products`
ORDER BY `List Price` DESC, `Standard Cost` DESC;

-- 6.    (1p) List products whose categories are Pasta, Soups, or Beverages and List Price is greater than $10, sorting the name alphabetically. 
SELECT *
FROM `products`
WHERE `Category` IN ('Pasta', 'Soups', 'Beverages') AND `List Price` > 10
ORDER BY `Product Name` ASC;

-- 7.    (1p) Show the list of Employees, sorting Last Name and First Name alphabetically.
SELECT *
FROM `employees`
ORDER BY `Last Name` ASC, `First Name` ASC;

-- 8.    (1p) Find Orders having Payment Type equal to "Credit Card"
SELECT *
FROM `orders`
WHERE `Payment Type` = 'Credit Card';

-- 9.    (1p) Show the 10 latest Purchase Orders
SELECT *
FROM `purchase orders`
ORDER BY `Creation Date` DESC
LIMIT 10;

-- 10.    (1p) Find Orders being shipped in March.
SELECT *
FROM `orders`
WHERE MONTH(`Shipped Date`) = 3;

-- 11.    (1p) Compute the value of each line of table Order Details. The results should have two columns: OrderDetailID, and Value where Value = (Quantity * [Unit Price])*(1-Discount)
SELECT `ID` AS OrderDetailID, (Quantity * `Unit Price` * (1 - Discount)) AS Value
FROM `order details`;

-- 12.    (1p) Find how much is the average Unit Price of items being ordered.
SELECT AVG(`Unit Price`) AS AverageUnitPrice
FROM `order details`;

-- 13.    (1p) Compute how many purchase orders have been approved in the year 2006.
SELECT COUNT(*) AS ApprovedPurchaseOrdersCount
FROM `purchase orders`
WHERE YEAR(`Approved Date`) = 2006;

-- 14.    (1p) Compute the total shipping fee of all orders in June
SELECT SUM(`Shipping Fee`) AS TotalShippingFee
FROM `orders`
WHERE MONTH(`Shipped Date`) = 6;

-- 15.    (2p) Find all Customers living in New York and whose Job Title(s) contains "Manager" keyword 
SELECT *
FROM `customers`
WHERE `City` = 'New York' AND `Job Title` LIKE '%Manager%';

-- 16.    (2p) Show the list of Employees with 3 columns as in the bellow picture, whereas the column Full Name is the combination of First Name and Last Name and the Last Name are in upper case.
SELECT CONCAT(`First Name`, ' ', UPPER(`Last Name`)) AS `Full Name`, `E-mail Address`, `Job Title`
FROM `employees`;

-- 17.    (2p) Note that in the table Products, all product names have the prefix "Northwind Traders". Show the products' names in a short format without that prefix. The result should look like the below picture.
SELECT SUBSTRING(`Product Name`, LENGTH('Northwind Traders') + 2) AS `Short Product Name`
FROM `products`;

