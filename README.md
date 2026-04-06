# Empresa Database Project

This project demonstrates the design, implementation, and basic usage of a relational database using PostgreSQL.

The objective is to show the complete workflow of a database system, from the conceptual model to a simple interactive representation of how the data behaves in practice.

## Project Overview

The system is based on four main entities:

* proveedores (suppliers)
* productos (products)
* ventas (sales)
* detalle_venta (sales details)

These tables are connected through primary and foreign keys, following a relational structure that supports typical business operations.

## Database Design

The database was designed using an Entity–Relationship model and then implemented in PostgreSQL.

Relationships:

* One-to-many between proveedores and productos
* One-to-many between ventas and detalle_venta
* Many-to-many between productos and ventas through detalle_venta

## SQL Implementation

The schema includes:

* Primary keys using SERIAL
* Foreign key constraints
* Normalized table structure
* JOIN queries to combine related data

Example query:

```sql
SELECT v.id_venta, v.nombre_cliente, p.nombre AS producto
FROM detalle_venta dv
JOIN ventas v ON dv.id_venta = v.id_venta
JOIN productos p ON dv.id_producto = p.id_producto;
```

## Web Interface

A simple web interface was developed to present the project in three parts:

* Diagram: visual representation of the database structure
* SQL: definition of the schema
* Demo: simulation of a basic sales flow

The demo includes a simplified interaction where a sale is registered and reflected as insert operations.

## Live Version

https://jlarismendizdata-lang.github.io/empresa-db-demo/

## Technologies

* PostgreSQL
* HTML
* CSS
* JavaScript

## Notes

This project is focused on understanding relational databases and demonstrating how structure, queries, and data interaction are connected in a practical scenario.

## Author

Jose Luis Luna Arismendiz
