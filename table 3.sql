CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    description TEXT,
    image_url VARCHAR(255),
    supplier_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO products (product_name, category, price, quantity, description, image_url, supplier_id)
VALUES
('Laptop', 'Electronics', 899.99, 50, 'Powerful laptop for work and play', 'https://example.com/laptop.jpg', 1),
('Smartphone', 'Electronics', 599.99, 100, 'Latest smartphone with advanced features', 'https://example.com/smartphone.jpg', 2),
('T-Shirt', 'Clothing', 19.99, 200, 'Comfortable and stylish t-shirt', 'https://example.com/tshirt.jpg', 3),
('Jeans', 'Clothing', 49.99, 150, 'Durable and trendy jeans', 'https://example.com/jeans.jpg', 3),
('Sneakers', 'Footwear', 79.99, 80, 'Comfortable and stylish sneakers', 'https://example.com/sneakers.jpg', 4);