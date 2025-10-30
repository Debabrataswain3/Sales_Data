-- Create Database
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

-- Create Table
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO sales (product, quantity, price) VALUES
('Laptop', 5, 60000),
('Mobile', 10, 20000),
('Tablet', 4, 25000),
('Headphones', 15, 1500),
('Smartwatch', 7, 8000);

SELECT 
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM 
    sales
GROUP BY 
    product;

