# DataForge — Relational Database Simulation

This project demonstrates the design, structure, and behavior of a relational database system through an interactive web application.

The goal is to connect database theory with practical visualization, showing how data flows from user interaction to structured storage and analysis.

## Project Overview

The system is built around a company database composed of seven main tables:

- customers
- suppliers
- products
- sales
- sale_details
- shipments
- shipment_details

These entities are connected using primary and foreign keys, modeling real business operations such as sales, inventory management, and supplier logistics.

## Database Design

The database follows a relational model implemented conceptually in PostgreSQL.

Relationships include:

- One-to-many between customers and sales  
- One-to-many between suppliers and products  
- One-to-many between sales and sale_details  
- Many-to-many between products and sales through sale_details  
- Many-to-many between shipments and products through shipment_details  

This structure ensures data integrity and supports scalable operations.

## Application Features

The web application is divided into five main modules:

- **Dynamic Model**: Step-by-step simulation of a business transaction flow  
- **Static Model**: Interactive Entity-Relationship diagram  
- **SQL Playground**: In-browser execution of SQL queries (simulated engine)  
- **Store Demo**: Real-time simulation of a sales process  
- **Admin Dashboard**: Visualization of metrics, inventory, and sales analytics  

## SQL Simulation

The project includes a custom SQL interpreter that supports:

- SELECT queries  
- JOIN operations  
- WHERE conditions  
- GROUP BY and ORDER BY  

Example query:

```sql
SELECT s.sale_id, c.name AS customer, s.total
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id;

Live Demo

https://jlarismendizdata-lang.github.io/empresa-db-demo/

Technologies
PostgreSQL (conceptual design)
HTML
CSS
JavaScript
Chart.js
Notes

This project is designed for educational purposes, focusing on understanding relational databases, data flow, and system interaction in a practical and visual way.

Author

Jose Luis Luna Arismendiz

