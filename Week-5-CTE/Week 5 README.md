# 📚 Week 5 - Common Table Expressions (CTE)

Welcome to **Week 5** of the **Celebal Technologies SQL Internship**!  
This week is dedicated to exploring **Common Table Expressions (CTEs)** — essential tools for writing readable, modular, and recursive SQL queries.

---

## 🧠 Topics Overview

| Topic                       | Description                                                    |
|----------------------------|----------------------------------------------------------------|
| `CTE - Part 1`             | Introduction and basic syntax                                  |
| `CTE - Part 2`             | Multi-CTE chaining and nesting                                 |
| `Updatable CTE`            | Modify base tables via CTEs                                    |
| `Recursive CTE`            | Handle hierarchical/recursive data structures cleanly          |

---

## 🧪 Tools Used

| Environment                     | Purpose                          |
|----------------------------------|----------------------------------|
| Microsoft SQL Server (SSMS)      | Development & testing            |
| MySQL Workbench (reference use) | Syntax validation (where valid)  |

---

## 📝 Assignment – Subject Change Request Problem

> 🎯 **Goal**: Maintain a full history of subject changes per student without deleting records.

---

### 📁 Database Tables

| Table Name         | Key Columns                         | Purpose                                                             |
|--------------------|--------------------------------------|---------------------------------------------------------------------|
| `SubjectAllotments`| `StudentId`, `SubjectId`, `Is_valid` | Tracks historical and active subject allocations                   |
| `SubjectRequest`   | `StudentId`, `SubjectId`             | Logs subject change requests                                        |

- `Is_valid = 1` → current active subject  
- `Is_valid = 0` → past/inactive subjects  

---

### 🔁 Business Rules

<details>
<summary><strong>Click to Expand Logic</strong></summary>

- ✅ If the requested subject **matches current active subject** → Do nothing  
- ✅ If the requested subject is **different** →  
  - Mark existing subject (`Is_valid = 1`) as `0`  
  - Insert new subject with `Is_valid = 1`  
- ✅ If **no record exists** for student → Insert new subject with `Is_valid = 1`  

</details>

---

### 🛠 Stored Procedure: `HandleSubjectRequests`

<details>
<summary><strong>Click to View Process</strong></summary>

The stored procedure uses a **cursor-based approach** to iterate through each subject change request.

**Key Steps:**
1. Loop through each student in `SubjectRequest`
2. Compare current active subject from `SubjectAllotments`
3. If subject is different:
   - Update current subject `Is_valid = 0`
   - Insert new subject `Is_valid = 1`
4. If no current subject:
   - Insert new subject directly

</details>

---



