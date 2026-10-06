# 📚 Library Management System - SQL Database Project

> A relational database project built using **MySQL** to design and manage a Library Management System. This project demonstrates database design, normalization, SQL querying, and business reporting using a real-world library scenario.

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1)
![SQL](https://img.shields.io/badge/SQL-Queries-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📖 Project Overview

Libraries handle thousands of books, borrowers, publishers, and loan transactions daily. Managing this information efficiently requires a well-designed relational database.

This project implements a **Library Management System** using MySQL to manage library operations such as:

- Book Management
- Publisher Management
- Author Management
- Library Branch Management
- Borrower Management
- Book Loan Tracking
- Book Availability Monitoring

The project demonstrates database design principles, SQL querying techniques, and analytical reporting using relational databases.

---

# 🎯 Objectives

- Design a normalized relational database.
- Implement relationships using Primary and Foreign Keys.
- Manage library operations efficiently.
- Perform complex SQL queries for reporting.
- Analyze book availability and borrowing activities.
- Demonstrate SQL skills used in real-world database systems.

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| MySQL | Relational Database Management System |
| SQL | Database Queries |
| CSV Files | Data Import |
| MySQL Workbench | Database Development |

---

# 📂 Dataset

The project uses multiple datasets representing different entities within a library system.

| Dataset | Description |
|----------|-------------|
| books.csv | Book information |
| authors.csv | Book authors |
| publisher.csv | Publisher information |
| borrower.csv | Library members |
| library_branch.csv | Library branch details |
| book_copies.csv | Book inventory across branches |
| book_loans.csv | Book borrowing transactions |

---

# 🏗 Database Schema

The database consists of the following tables:

```
tbl_publisher
│
├── tbl_book
│       │
│       ├── tbl_book_authors
│       │
│       └── tbl_book_copies
│
tbl_library_branch
│
├── tbl_book_copies
│
└── tbl_book_loans
        │
        └── tbl_borrower
```

---

# 🗂 Database Tables

### 📚 Publisher

Stores publisher information.

---

### 📖 Book

Stores book details.

---

### ✍️ Book Authors

Maps books to their respective authors.

---

### 🏢 Library Branch

Stores information about different library branches.

---

### 📦 Book Copies

Tracks the number of copies available at each branch.

---

### 👤 Borrower

Stores borrower information.

---

### 🔄 Book Loans

Tracks issued books, due dates, and returned books.

---

# 🔗 Database Relationships

The project uses relational database principles.

Relationships include:

- Publisher → Books
- Books → Authors
- Books → Book Copies
- Library Branch → Book Copies
- Borrower → Book Loans
- Library Branch → Book Loans

All relationships are enforced using **Primary Keys** and **Foreign Keys**.

---

# 🚀 Features

- Library Database Design
- Normalized Relational Schema
- Primary Key Constraints
- Foreign Key Constraints
- Data Integrity
- Book Inventory Management
- Loan Tracking
- Borrower Management
- SQL Reporting
- Analytical Queries

---

# 📊 SQL Concepts Demonstrated

## Database Design

- Entity Relationship Modeling
- Normalization
- Primary Keys
- Foreign Keys
- Constraints

---

## SQL Queries

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- LIMIT

---

## SQL Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multiple Table Joins

---

## SQL Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

## Advanced SQL

- Nested Queries
- Aggregate Functions
- Filtering
- Sorting
- Data Analysis

---

# 📈 Business Questions Solved

The database can answer questions such as:

- Which books are currently available?
- Which books have the highest number of copies?
- Which borrowers have borrowed the most books?
- Which library branch has the largest inventory?
- Which publishers have published the most books?
- Which authors have written the highest number of books?
- Which books are currently on loan?
- Which borrowers have overdue books?

---


# 📚 Skills Demonstrated

## SQL

- Data Definition Language (DDL)
- Data Manipulation Language (DML)
- Joins
- Aggregate Functions
- Subqueries
- Grouping
- Filtering

---

## Database Design

- Relational Database Design
- Entity Relationships
- Normalization
- Constraints
- Data Integrity

---

## Business Analysis

- Inventory Analysis
- Borrower Analysis
- Library Operations
- Reporting
- Data Analytics

---


# 🎯 Learning Outcomes

This project demonstrates practical experience with:

- Relational Database Design
- MySQL
- SQL Query Writing
- Database Normalization
- Data Relationships
- Analytical SQL Queries
- Business Reporting
- Data Integrity Management

---

# 🚀 Future Enhancements

- Stored Procedures
- Triggers
- Views
- Indexing
- User Authentication
- Role-Based Access Control
- Backup & Recovery Scripts
- Integration with a Frontend Application

---

# 📌 Project Status

✅ Completed

---

# 👨‍💻 Author

**Sai Chetan Reddy**

Computer Science (Artificial Intelligence) Graduate

GitHub: https://github.com/saichetanreddy07

LinkedIn: *Add your LinkedIn profile here*

---

## ⭐ If you found this project useful, consider giving it a star!
