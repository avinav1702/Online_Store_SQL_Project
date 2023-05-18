CREATE TABLE Customers
(CustomerId int NOT NULL PRIMARY KEY,
FirstName varchar (50), 
LastName varchar (50), 
CustomerEmail varchar (50),
PhoneNumber bigint
)

CREATE TABLE Products
(ProductID int NOT NULL PRIMARY KEY, 
ProductName varchar (50), 
Price float (25), 
Quantity int
)

CREATE TABLE Orders
(OrderID int NOT NULL PRIMARY KEY, 
CustomerID int NOT NULL FOREIGN KEY REFERENCES Customers (CustomerID),
OrderDate DateTime
)

CREATE TABLE Order_Items
(OrderItemID int NOT NULL PRIMARY KEY, 
OrderID int NOT NULL FOREIGN KEY REFERENCES Orders (OrderID), 
ProductID int NOT NULL FOREIGN KEY REFERENCES Products (ProductID),
Quantity int
)
