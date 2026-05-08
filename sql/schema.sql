CREATE DATABASE stylesphere;
USE stylesphere;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(20),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE,
    segment VARCHAR(20)
);

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),
    brand VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    city VARCHAR(50),
    payment_mode VARCHAR(30),
    total_amount DECIMAL(10,2),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items(
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE TABLE returns(
    return_id INT PRIMARY KEY,
    order_id INT,
    return_reason VARCHAR(100),
    return_date DATE,
    refund_amount DECIMAL(10,2),
    FOREIGN KEY(order_id) REFERENCES orders(order_id)
);
