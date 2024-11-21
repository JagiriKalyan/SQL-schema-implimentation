create database production;
use production;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    shipping_address VARCHAR(255),
    billing_address VARCHAR(255),
    shipping_method VARCHAR(50),
    payment_method VARCHAR(50),
    status VARCHAR(20),
    notes TEXT
);
DELIMITER //
CREATE PROCEDURE insert_1000_orders()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 1000 DO
    INSERT INTO orders (customer_id, order_date, total_amount, shipping_address, billing_address, shipping_method, payment_method, status, notes)
    VALUES (
      FLOOR(RAND() * 1000) + 1,  -- Random customer ID between 1 and 1000
      CURDATE(),  -- Current date
      ROUND(RAND() * 1000, 2),  -- Random total amount between 0 and 1000
      'Random Shipping Address',
      'Random Billing Address',
      'Standard Shipping',
      'Credit Card',
      'Pending',
      'Random Notes'
    );
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL insert_1000_orders();