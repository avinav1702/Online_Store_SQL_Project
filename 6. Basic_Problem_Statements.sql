--Problem Statement 1. Retrieve Names of all Customers
--Solution 1. 
--SELECT  Customers.FirstName + ' ' + Customers.LastName AS CustomerName
--FROM Online_Store.dbo.Customers AS Customers

--Problem Statement 2. Retrieve Names and Prices of all Products
--Solution 2. 
--SELECT Products.ProductName, Products.Price 
--FROM Online_Store.dbo.Products AS Products

--Problem Statement 3. Retrieve the order IDs and corresponding customer names for all orders
--Solution 3. 
--SELECT Orders.OrderID, Customers.FirstName + ' ' + Customers.LastName AS CustomerName 
--FROM Online_Store.dbo.Orders AS Orders
--INNER JOIN Online_Store.dbo.Customers AS Customers
--ON Orders.CustomerID = Customers.CustomerID

--Problem Statement 4. Retrieve the order IDs, product names, and quantities for all order items
--Solution 4. 
--SELECT Items.OrderID, Products.ProductName, Items.Quantity
--FROM Online_Store.dbo.Order_Items AS Items
--JOIN Online_Store.dbo.Orders AS Orders
--ON Items.OrderID = Orders.OrderID
--JOIN Online_Store.dbo.Products AS Products
--ON Items.ProductID = Products.ProductID