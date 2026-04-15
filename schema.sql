CREATE DATABASE company;

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    national_id VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(10),
    address VARCHAR(150)
);

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    tax_id VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(50),
    phone VARCHAR(10),
    email VARCHAR(80),
    address VARCHAR(80)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    brand VARCHAR(50),
    category VARCHAR(50),
    price NUMERIC(10,2) NOT NULL,
    stock INT DEFAULT 0,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT,
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE sale_details (
    detail_id SERIAL PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC(10,2),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE shipments (
    shipment_id SERIAL PRIMARY KEY,
    supplier_id INT,
    shipment_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE shipment_details (
    shipment_detail_id SERIAL PRIMARY KEY,
    shipment_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);





