# 📚 Week 4 - Triggers & Subject Allotment Logic

Welcome to **Week 4** of the Celebal SQL Internship!  
This module focuses on implementing **DML Triggers** and solving a **real-world subject allotment problem** using stored procedures and trigger logic.

---

## 🧠 Key Topics Covered

| Trigger Type              | Description                                              |
|---------------------------|----------------------------------------------------------|
| `AFTER UPDATE`            | Runs after a record is updated                           |
| `INSTEAD OF INSERT`       | Custom logic before insertion                            |
| `INSTEAD OF UPDATE`       | Intercepts update for validation or transformation       |
| `INSTEAD OF DELETE`       | Used to cascade or prevent deletion                      |

---

## 🧪 Tools Used

| Environment            | Purpose                            |
|------------------------|------------------------------------|
| **SQL Server (SSMS)**  | Development, execution, debugging  |
| **MySQL Workbench**    | Syntax validation (where possible) |

---

## 📝 Assignment: Subject Allotment Problem

### 🎯 Objective

Automate elective subject allotment based on student preferences and GPA.  
Allocation should favor students with **higher GPA**, and ensure fair seat distribution.

---

### 📁 Tables Used

| Table               | Purpose                                                  |
|---------------------|----------------------------------------------------------|
| `StudentPreference` | Stores subject preferences (1 to 5) per student          |
| `SubjectDetails`    | Tracks subject info with seat availability               |
| `StudentDetails`    | Contains student profiles with GPA                       |
| `Allotments`        | Final subject-to-student allotment table                 |
| `UnallottedStudents`| Students who couldn’t get any subject due to seat limits |

---

### 🔁 Allocation Logic

<details>
<summary><strong>Click to Expand Allocation Rules</strong></summary>

- Sort all students by **GPA (highest to lowest)**  
- Loop through each student’s 5 preferences (1 to 5)  
  - If preferred subject has seats → assign subject and reduce seat count  
  - If all 5 are full → mark student as **unallotted**  
- Prevent selecting the **same subject more than once**  
- Maintain complete **history and auditability** of allotments  
</details>

---

### 🛠 Stored Procedure: `AllotSubjectsBasedOnGPA`

<details>
<summary><strong>Click to View Functional Steps</strong></summary>

- Fetch students sorted by GPA  
- For each student:  
  - Iterate through their subject preferences (1–5)  
  - Check `RemainingSeats` in `SubjectDetails`  
  - Allocate subject if available  
  - Insert record into `Allotments` or `UnallottedStudents`  
- Update `RemainingSeats` accordingly  
</details>

---

## ✅ Highlights

- ✅ GPA-based priority ensures merit-driven allocation  
- ✅ Handles multiple edge cases (no seat, duplicate preferences)  
- ✅ Scalable logic suitable for large student batches  
- ✅ Can be integrated with trigger/post-form workflows  
- ✅ Modular and audit-compliant procedure for production use

---


