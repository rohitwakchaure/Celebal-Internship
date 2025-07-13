# 📚 Week 3 - Indexes, Temp Tables, Stored Procedures & Subqueries

Welcome to **Week 3** of the Celebal Technologies SQL Internship!  
This module dives into **performance optimization**, **intermediate storage**, and **advanced querying** using SQL Server and MySQL.

---

## 🧠 Key Concepts Covered

| Area                | Topics                                                                 |
|---------------------|------------------------------------------------------------------------|
| 📦 Temp Tables       | Local `#Temp` vs Global `##Temp`, session scope                       |
| ⚡ Indexing          | Clustered, Non-clustered, Unique, Composite indexes                   |
| ⚙️ Stored Procedures | Output parameters (single/multiple), modular logic                    |
| 🔍 Subqueries        | Basic vs Correlated subqueries, comparison with joins                 |
| 🚀 Optimization      | Query plans, `EXPLAIN`, `STATISTICS TIME`, `IO`, real use cases       |

---

## 🧪 Environment Used

| Tool                          | Purpose                        |
|-------------------------------|--------------------------------|
| **MySQL Workbench 8.0**       | Query execution & testing      |
| **SQL Server Management Studio (SSMS)** | Query plans, stats analysis   |

Tested all queries in **both platforms** to ensure cross-environment correctness.

---

## 📝 Assignment – Level C Task Summary

### 📁 Temporary Tables

- Used for **intermediate data** manipulation  
- Created using:
  - `#LocalTempTable` (session-specific)
  - `##GlobalTempTable` (accessible to all sessions)
- Verified via `tempdb` metadata queries  

---

### 📌 Indexing & Performance

<details>
<summary><strong>Expand to View Indexing Tasks</strong></summary>

#### ✅ Tasks Performed:
- Created:
  - `CLUSTERED`, `NONCLUSTERED`, `UNIQUE`, `COMPOSITE` indexes
- Evaluated:
  - Performance using `SET STATISTICS TIME`, `IO` (SQL Server)
  - Used `EXPLAIN` plan in MySQL

#### 📈 Trade-off Analysis:
- **Pros**:
  - Faster reads, improved filter/search
- **Cons**:
  - Overhead on inserts/updates, additional storage
</details>

---

### 🛠️ Stored Procedures with Output

<details>
<summary><strong>Expand to View Procedure Use Cases</strong></summary>

#### 1. **Single Output Parameter**
- Returns total, average, or specific status as output

#### 2. **Multiple Output Parameters**
- Outputs multiple computed values (e.g., revenue, orders, count)

#### 3. **Advantages Documented**
- Modular and reusable  
- Enhanced performance  
- Logic abstraction and better security  
</details>

---

### 🔍 Subqueries vs Joins

| Type                 | Description |
|----------------------|-------------|
| 🔹 Basic Subqueries   | Used in `SELECT`, `FROM`, `WHERE` |
| 🔹 Correlated         | Returns values **dependent on outer query** |
| 🔄 Performance Test   | Compared to `JOINs` using execution plans |

✅ **Findings**: Subqueries are more readable in isolated use cases; Joins are often faster for large datasets.

---

## 📂 Suggested Folder Structure


---

## ✅ Outcome

By completing this week’s tasks, you will:

- Understand **index strategies** and their effects  
- Use **temp tables** to simplify complex workflows  
- Build **stored procedures** with dynamic output  
- Evaluate performance between subqueries and joins  

---

**Happy Optimizing! 🚀**
