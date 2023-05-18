--Problem Statement 1. Write a SQL query to retrieve the total number of customers in the Customers table.
--Solution 1. 
--SELECT COUNT (Customers.CustomerID) AS No_of_Customers
--FROM Online_Store.dbo.Customers AS Customers

--Problem Statement 2. Write a SQL query to calculate the average price of all products in the Products table.
--Solution 2. 
--SELECT AVG (Products.Price) AS AvgPrice
--FROM Online_Store.dbo.Products AS Products

--Problem Statement 3. Write a SQL query to find the customer with the highest number of orders.
--Solution 3. 
--SELECT Orders.CustomerID, COUNT (DISTINCT Orders.OrderID) AS Number_of_Orders
--FROM Online_Store.dbo.Orders AS Orders
--GROUP BY Orders.CustomerID
--ORDER BY 2 DESC

--Problem Statement 4. Write a SQL query to retrieve the names of all customers who have placed an order.
--Solution 4. 
--SELECT FirstName + ' ' + LastName AS CustomerName 
--FROM Online_Store.dbo.Orders AS Orders
--JOIN Online_Store.dbo.Customers AS Customers 
--ON Customers.CustomerId = Orders.CustomerID

--Problem Statement 5. Write a SQL query to calculate the total quantity of a specific product in all orders.
--Solution 5. 
--SELECT Items.ProductID, SUM (Items.Quantity) AS Total_Quantity
--FROM Online_Store.dbo.Order_Items AS Items
--GROUP BY Items.ProductID
--ORDER BY 2 DESC

--Problem Statement 6. Write a SQL query to retrieve the order IDs and corresponding customer names for orders placed on a specific date.
--Solution 6. 
--SELECT Orders.OrderID, Customers.FirstName + ' ' + Customers.LastName AS CustomerName
--FROM Online_Store.dbo.Orders AS Orders
--JOIN Online_Store.dbo.Customers AS Customers
--ON Orders.CustomerID = Customers.CustomerId
--WHERE Orders.OrderDate = '2022-05-01 10:15:00.000'

--Problem Statement 7. Write a SQL query to update the quantity of a product in the Products table.
--Solution 7. 
--UPDATE Online_Store.dbo.Products
--SET Online_Store.dbo.Products.Quantity = 150
--WHERE Online_Store.dbo.Products.ProductID = 801

--Problem Statement 8. Write a SQL query to delete all orders placed by a specific customer.
--Solution 8. 
--DELETE 
--FROM Online_Store.dbo.Orders
--WHERE Online_Store.dbo.Orders.CustomerID = 1003

--Problem Statement 9. Write a SQL query to find the product with the lowest quantity in stock.
--Solution 9. 
--SELECT Products.ProductID, Products.ProductName, Products.Quantity
--FROM Online_Store.dbo.Products AS Products
--WHERE Products.Quantity = 
--(SELECT MIN (Products.Quantity) FROM Online_Store.dbo.Products)

--Problem Statement 10. Write a SQL query to retrieve the order IDs and corresponding customer names for orders containing a specific product.
--Solution 10. 
--SELECT Items.OrderID, Customers.FirstName + ' ' + Customers.LastName AS CustomerName
--FROM Online_Store.dbo.Order_Items AS Items
--JOIN Online_Store.dbo.Orders AS Orders
--ON Items.OrderID = Orders.OrderID
--JOIN Online_Store.dbo.Customers AS Customers
--ON Orders.CustomerID = Customers.CustomerId
--WHERE ITEMS.ProductID = 801