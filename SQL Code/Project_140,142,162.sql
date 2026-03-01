CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    district VARCHAR(50),
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE Sellers (
    seller_id INT AUTO_INCREMENT PRIMARY KEY,
    seller_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    category_id INT,
    seller_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_mode VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);



INSERT INTO Customers (name, district, address, phone) VALUES
('SAbbir Ahmed','Dhaka','Kamrangirchar, Dhaka', ''),
('Md Abdullah','Dhaka','MurgiPotti, Dhaka', ''),
('Shovon Debnath','Dhaka','Rednightgolli, Dhaka',''),
('Rahim Uddin', 'Dhaka', 'Mirpur-10, Dhaka', '01710000001'),
('Karim Ahmed', 'Chattogram', 'Agrabad, Chattogram', '01810000002'),
('Rafiul Islam', 'Rajshahi', 'Shaheb Bazar, Rajshahi', '01910000003'),
('Nusrat Jahan', 'Sylhet', 'Zindabazar, Sylhet', '01610000004'),
('Mehedi Hasan', 'Khulna', 'Sonadanga, Khulna', '01510000005'),
('Sadia Akter', 'Barishal', 'Rupatali, Barishal', '01710000006'),
('Tanvir Hossain', 'Rangpur', 'Paira Chattar, Rangpur', '01810000007'),
('Sabbir Rahman', 'Dhaka', 'Dhanmondi, Dhaka', '01910000008'),
('Mim Chowdhury', 'Comilla', 'Kandirpar, Comilla', '01610000009'),
('Arif Khan', 'Gazipur', 'Tongi, Gazipur', '01710000010');

INSERT INTO Sellers (seller_name, city) VALUES
('Daraz Bangladesh', 'Dhaka'),
('Pickaboo', 'Dhaka'),
('Evaly', 'Dhaka'),
('Othoba', 'Gazipur'),
('AjkerDeal', 'Chattogram'),
('Bikroy.com', 'Dhaka'),
('PriyoShop', 'Dhaka'),
('TechLand BD', 'Dhaka'),
('StarTech', 'Dhaka'),
('Rokomari', 'Dhaka'),
('Bikikini', 'Dhaka'),
('Chal-Dhal', 'Rajshahi'),
('Bikikini', '');

INSERT INTO Category (category_name) VALUES
('Electronics'),
('Fashion'),
('Grocery'),
('Books'),
('Home Appliances'),
('Sports');

INSERT INTO Products (product_name, price, category_id, seller_id) VALUES
('Samsung Smartphone', 25000.00, 1, 1),
('Walton Refrigerator', 40000.00, 5, 5),
('HP Laptop', 70000.00, 1, 9),
('Cricket Bat', 2500.00, 6, 6),
('T-shirt', 700.00, 2, 2),
('Rice 5kg Bag', 600.00, 3, 4),
('Cooking Oil 2L', 380.00, 3, 4),
('Novel - Humayun Ahmed', 350.00, 4, 10),
('Microwave Oven', 8500.00, 5, 8),
('Football', 900.00, 6, 7);

INSERT INTO Orders (customer_id, order_date, total_amount, status)
VALUES
(1, '2025-10-01', 25000.00, 'Delivered'),
(2, '2025-10-02', 8500.00, 'Pending'),
(3, '2025-10-03', 70000.00, 'Shipped'),
(4, '2025-10-04', 700.00, 'Delivered'),
(5, '2025-10-05', 2500.00, 'Delivered'),
(6, '2025-10-06', 600.00, 'Delivered'),
(7, '2025-10-07', 380.00, 'Delivered'),
(8, '2025-10-08', 900.00, 'Pending'),
(9, '2025-10-09', 40000.00, 'Delivered'),
(10, '2025-10-10', 350.00, 'Delivered');

INSERT INTO Payments (order_id, payment_date, payment_mode, payment_status)
VALUES
(1, '2025-10-01', 'bKash', 'Paid'),
(2, '2025-10-02', 'Nagad', 'Pending'),
(3, '2025-10-03', 'Bank Transfer', 'Paid'),
(4, '2025-10-04', 'Cash on Delivery', 'Paid'),
(5, '2025-10-05', 'bKash', 'Paid'),
(6, '2025-10-06', 'Nagad', 'Paid'),
(7, '2025-10-07', 'Rocket', 'Paid'),
(8, '2025-10-08', 'Cash on Delivery', 'Pending'),
(9, '2025-10-09', 'bKash', 'Paid'),
(10, '2025-10-10', 'Bank Transfer', 'Paid');


SELECT * FROM Customers;
SELECT * FROM Sellers;
SELECT * FROM Category;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments