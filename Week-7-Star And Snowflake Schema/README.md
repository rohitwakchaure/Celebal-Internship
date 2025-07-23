# ⭐ Week 7 - Star & Snowflake Schema, Normalization, SCD Types

Welcome to **Week 7** of the SQL Internship at **Celebal Technologies**!  
This week focuses on mastering data warehouse modeling techniques, normalization principles, and implementing SCD (Slowly Changing Dimensions) using stored procedures.

---

## 🧠 Topics Covered

- 📊 **Star and Snowflake Schema**  
  Understand dimensional modeling approaches used in BI & reporting systems.

- 🧱 **Normalization**  
  Learn about 1NF, 2NF, and 3NF to reduce redundancy and improve data integrity.

- ⚠️ **TRY...CATCH for Error Handling**  
  Handle errors gracefully in SQL procedures using structured error blocks.

---

## 🧪 Assignment: SCD Implementation

📁 **Folder:** `Week-7-Star and Snowflake Schema/`  
📄 **File:** `SCD_Types.sql`

### 🔧 Tasks

Create SQL stored procedures for:

| SCD Type | Description |
|----------|-------------|
| 🔹 Type 0 | Retain original data (no updates allowed) |
| 🔹 Type 1 | Overwrite old values with new ones |
| 🔹 Type 2 | Maintain full history by inserting new records |
| 🔹 Type 3 | Track limited history using additional columns |
| 🔹 Type 4 | Archive changes in a separate historical table |
| 🔹 Type 6 | Combine Types 1, 2, and 3 (Hybrid approach) |

---

## 🎯 Learning Outcomes

- Compare and design **Star vs Snowflake schemas**
- Apply **Normalization (1NF → 3NF)** in relational design
- Implement different **SCD Types** with SQL stored procedures
- Use **TRY...CATCH** for robust SQL error handling

---

## 🚀 Pro Tip

Mastering dimensional modeling and SCD techniques is key for building scalable data warehouses and powering effective business intelligence tools.

---

## 📷 Preview

> Sample schema diagram, table versions, and procedure outputs can be added here with screenshots.

---

### 🔗 Project URL

Deployed App (if any): [http://celebal-project-rohit-wakchaure.streamlit.app/](http://celebal-project-rohit-wakchaure.streamlit.app/)

---

🔄 Keep exploring, building, and improving your SQL skills!
