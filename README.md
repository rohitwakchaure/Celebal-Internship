# 📊 Celebal SQL Internship Tasks - Summer 2025

Welcome to the official repository for SQL tasks completed during my internship at **Celebal Technologies**. Tasks are organized week-wise based on the internship modules.

---

## 📅 Internship Overview

| Details       | Information                          |
|--------------|--------------------------------------|
| 🏢 Company    | Celebal Technologies                 |
| 👨‍💻 Role     | SQL Intern                           |
| 📆 Duration   | June 2, 2025 – August 3, 2025        |

---

## 📚 Weekly Task Summary

### 🔹 Week 1: DDL & Basic SQL

**Topics Covered**:
- Database/Table creation, altering, dropping
- Constraints: Primary, Foreign, Default, etc.
- Data types, DML commands (`INSERT`, `UPDATE`, `DELETE`)
- Joins, aggregation, set operations

📁 Folder: `Week-1-DDL/`  
📄 Assignment: `Level A Task Solutions`

---

### 🔹 Week 2: Functions, Procedures, Views & Triggers

**Topics Covered**:
- Built-in functions (String, DateTime, Math)
- User-defined functions (UDFs)
- Views: Updatable, Indexed
- Stored Procedures for CRUD operations
- Triggers for integrity & inventory

📁 Folder: `Week-2-BuiltIn-Functions/`  
📄 Assignment: `Level B Task Solutions`

---

### 🔹 Week 3: Indexes & Subqueries

**Topics Covered**:
- Temporary tables
- Indexes (unique, non-unique, pros/cons)
- Stored Procedures (with/without output)
- Subqueries & Correlated Subqueries

📁 Folder: `Week-3-Indexes/`  
📄 Assignment: `Level C Task Solutions`

---

### 🔹 Week 4: Triggers & Student Allotment

**Topics Covered**:
- DML Triggers: `AFTER`, `INSTEAD OF`
- Stored Procedure: GPA-based student subject allotment

📁 Folder: `Week-4-Triggers/`  
📄 Assignment: `Student Allotment Problem`

---

### 🔹 Week 5: Common Table Expressions (CTE)

**Topics Covered**:
- CTE basics, recursive and updatable CTEs
- Subject change tracking using procedures

📁 Folder: `Week-5-CTE/`  
📄 Assignment: `Subject Change Request`

---

### 🔹 Week 6: Pivot, Transactions & LeetCode Problems

**Topics Covered**:
- `PIVOT` / `UNPIVOT` usage
- Error Handling: `TRY...CATCH`
- Transactions & ACID properties
- `MERGE` statement
- Window Functions: `ROW_NUMBER()`, `RANK()`, `NTILE()`
- LeetCode-style challenges

📁 Folder: `Week-6-Pivot/`  
📄 Assignment: `LeetCode Questions`

---

### 🔹 Week 7 - Slowly Changing Dimensions (SCD) – Types 0, 1, 2, 3, 4, 6

This week dives deep into **Slowly Changing Dimensions (SCD)** — a critical concept in **Data Warehousing and ETL** processes. Each SCD type handles historical changes in dimension tables differently. The assignment includes implementation of stored procedures for each SCD type using **SQL Server**.

#### 📚 Key Topics

- **SCD Type 0**: Fixed dimensions (no changes allowed)
- **SCD Type 1**: Overwrite old data (no history maintained)
- **SCD Type 2**: Historical tracking via versioning or effective dates
- **SCD Type 3**: Limited history with previous and current column versions
- **SCD Type 4**: History stored in a separate historical table
- **SCD Type 6**: Hybrid approach (Types 1 + 2 + 3)

Each SCD type is implemented through a **dedicated stored procedure** to handle `INSERT` and `UPDATE` operations based on the logic of that dimension type.


📁 **Folder:** `Week-7-Star and Snowflake Schema/`  
📄 **Assignment:** `Create Stored Procedures for SCD Types`

---

## 🚀 Usage Instructions

1. Clone or download this repository  
2. Open `.sql` files in SSMS or MySQL WorkBench  
3. Use **AdventureWorks2022** database  
4. Review commented solutions in each file  

---

## 👤 Author Info

**Wakchaure Rohit**  
SQL Intern @ Celebal Technologies  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/rohit-wakchaure/)

---

> ✅ _Repository is updated weekly with new tasks._
