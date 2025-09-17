-- Question One
USE salesdb;
CREATE TABLE customerOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);
CREATE TABLE ProductsDetails (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(100) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES customerOrders(OrderID)
);

-- Insert 
INSERT INTO customerOrders(OrderID, CustomerName) 
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


INSERT INTO ProductsDetails (OrderID, Product) 
VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');


-- Question two
USE salesdb;
CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
); 

CREATE TABLE OrderDetails2 (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders2(OrderID)
);

-- Inserting into Orders2
INSERT INTO Orders2 (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Inserting into OrderDetails2
INSERT INTO OrderDetails2 (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);