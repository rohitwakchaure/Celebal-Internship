# 📚 Week 6 - Pivot, Error Handling, Transactions & LeetCode SQL Problems

Welcome to **Week 6** of the Celebal Technologies SQL Internship!  
This week focuses on **data reshaping**, **robust SQL logic**, **transaction control**, and **performance-oriented query writing**, including **LeetCode-style challenges** for hands-on problem-solving.

---

## 🧠 Topics Explored

| Category              | Subtopics Included                                                  |
|-----------------------|---------------------------------------------------------------------|
| 🔄 Data Reshaping     | `PIVOT`, `UNPIVOT`                                                  |
| ⚠️ Error Handling     | `TRY...CATCH`, custom error messages, nested error blocks           |
| 🔐 Transactions        | `BEGIN`, `COMMIT`, `ROLLBACK`, ACID principles                     |
| 🧠 Merge Statements    | Conditional `INSERT`, `UPDATE`, `DELETE` using `MERGE`              |
| 📊 Window Functions    | `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`                |
| 🧩 LeetCode SQL        | Real-world styled SQL problems for query optimization              |

---

## 🧪 Tools Used

| Tool                        | Purpose                                       |
|-----------------------------|-----------------------------------------------|
| SQL Server Management Studio (SSMS) | Data transformation, error handling & control |
| MySQL Workbench             | Syntax reference (for standard SQL behavior)  |

---

## 🎯 Assignment Overview

> The objective this week is to simulate **real-life SQL challenges** by applying advanced techniques in controlled environments and optimizing performance.

---

### 🔁 Tasks Breakdown

<details>
<summary><strong>🌀 Pivot & Unpivot</strong></summary>

- Transform row-wise data into columns (`PIVOT`)  
- Flatten column-based data back into rows (`UNPIVOT`)  
- Use cases include: monthly sales reports, department-wise headcounts, and survey results

</details>

<details>
<summary><strong>⚙️ Error Handling</strong></summary>

- Implement `TRY...CATCH` blocks for syntax and runtime errors  
- Add custom messages for failure tracking  
- Include nested blocks for advanced exception scenarios

</details>

<details>
<summary><strong>🔐 Transactions & ACID</strong></summary>

- Use of `BEGIN`, `ROLLBACK`, `COMMIT`  
- Ensure **atomicity** and **consistency**  
- Apply transactional control to updates, deletions, and inserts in critical operations

</details>

<details>
<summary><strong>🧠 Merge Statement</strong></summary>

- Single-statement logic to:
  - Insert new records
  - Update existing ones
  - Delete obsolete entries  
- Use in dynamic synchronization scenarios (e.g., syncing product catalogs)

</details>

<details>
<summary><strong>📊 Window Functions</strong></summary>

| Function         | Use Case Example                              |
|------------------|-----------------------------------------------|
| `ROW_NUMBER()`    | Unique row ID per partition                   |
| `RANK()`          | Ranking rows with gaps                        |
| `DENSE_RANK()`    | Ranking rows without gaps                     |
| `NTILE(n)`        | Dividing rows into `n` roughly equal groups  |

</details>

<details>
<summary><strong>🧩 LeetCode SQL Problems</strong></summary>

- Solved performance-centric SQL questions from LeetCode  
- Focus on:
  - Filtering with `EXISTS`  
  - JOIN performance  
  - Subquery vs Window Function trade-offs  
- Problems include order summary reports, customer behavior tracking, and employee stats

</details>

---

## 📂 Suggested Folder Structure

