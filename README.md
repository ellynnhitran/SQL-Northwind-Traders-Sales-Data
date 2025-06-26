# SQL-Northwind-Traders-Sales-Data

## 📘 Overview

This project explores the **Northwind** database—a classic sample dataset for learning relational databases. The project involved writing various SQL queries to analyze data from Northwind's business operations, and designing an Entity-Relationship Diagram (ERD) to visualize the relationships between its core entities.

---

## ✅ Completed Tasks

### 📂 Part 1: SQL Query Tasks

Using the Northwind database, the following SQL queries were implemented and saved in a `.sql` file:

1. **Employee Contacts** – Retrieved list of emails and business phone numbers for all employees.
2. **Product Categories** – Displayed the unique product categories.
3. **Customer Cities** – Listed unique cities where customers are located, sorted alphabetically.
4. **Suppliers by Last Name** – Retrieved suppliers whose last names start with "H".
5. **Product Listing** – Listed products with their names, categories, list prices, and standard costs, sorted from most to least expensive.
6. **Filtered Products** – Displayed products in categories *Pasta*, *Soups*, or *Beverages* with a list price over $10, sorted alphabetically.
7. **Sorted Employees** – Listed all employees sorted by last name and first name.
8. **Orders by Payment Type** – Found orders paid via *Credit Card*.
9. **Recent Purchase Orders** – Retrieved the 10 latest purchase orders.
10. **March Shipments** – Found orders shipped in the month of March.
11. **Order Line Values** – Computed the value for each order detail:  
    `Value = Quantity * Unit Price * (1 - Discount)`
12. **Average Unit Price** – Calculated the average unit price of ordered items.
13. **2006 Approved Purchase Orders** – Counted all purchase orders approved in 2006.
14. **June Shipping Fee** – Calculated the total shipping fees for orders in June.
15. **New York Managers** – Listed customers in New York whose job title includes “Manager”.
16. **Employee Full Names** – Displayed employees with:
    - **EmployeeID**
    - **Full Name** (First Name + UPPERCASE Last Name)
    - **Title**
17. **Product Name Cleanup** – Removed the "Northwind Traders" prefix from product names for cleaner display.

---

### 🧩 Part 2: Entity-Relationship Diagram (ERD)

An ERD was created using **Chen's Notation** to model the core business logic of Northwind. It includes the following entities and their relationships:

- **Products**: Identified by ID, with name, list price, and category.
- **Customers**: With name, unique email, phone, and address.
- **Suppliers**: With name, unique email, phone, and address.
- **Orders**: Each has a unique order code, date, and order details (product, quantity, unit price).
- **Purchase Orders (POs)**: Include creation date, unique ordinal number per supplier, payment method (cash/check/transfer), and PO details (product, quantity, unit cost).

🛠 Tools used for ERD:
- [draw.io](https://draw.io) (recommended for cross-platform compatibility)
- Microsoft Visio (Windows)

---

## 📁 Deliverables

- `northwind_queries.sql`: Contains all SQL queries listed above.
- `northwind_ERD.png` or `.drawio`: Visual ER diagram of the database structure.

---

## 📌 Notes

- This project wrote SQL queries for data retrieval, filtering, aggregation, and formatting.
- The ERD design shows relational modeling and business logic representation.
