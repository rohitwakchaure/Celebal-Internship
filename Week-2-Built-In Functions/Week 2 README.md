# 📚 Week 2 - Built-In Functions, Stored Procedures, Views & Triggers

Welcome to **Week 2** of the Celebal Technologies SQL Internship. This week emphasizes **modular programming**, **code reuse**, and **data abstraction** using **AdventureWorks2022**.

---

## 🧠 Summary of Concepts

| Category            | Topics                                                                 |
|---------------------|------------------------------------------------------------------------|
| 🔤 String Functions  | `LEN()`, `LEFT()`, `RIGHT()`, `CHARINDEX()`, `REPLACE()`               |
| 🕒 Date/Time         | `GETDATE()`, `CONVERT()`, `FORMAT()`, `DATEPART()`                     |
| 🔢 Math & Convert    | `ROUND()`, `ABS()`, `CAST()`, `CONVERT()`                              |
| 🧮 UDFs              | Scalar User Defined Functions                                           |
| 👁️ Views            | Updatable Views, Indexed Views, View Limitations                       |
| ⚙️ Stored Procedures| Parameterized Procedures, Defaults, Output, Validation, Transactions    |
| 🔥 Triggers         | `INSTEAD OF`, `BEFORE INSERT` with stock validation and cascading logic |

---

## 📝 Assignment Tasks — Level B

> All tasks are implemented using the **AdventureWorks2022** SQL Server database.

### 🔁 Stored Procedures

<details>
<summary><strong>Click to Expand</strong></summary>

#### 1. `InsertOrderDetails`
- Accepts: `OrderID`, `ProductID`, `UnitPrice` *(optional)*, `Quantity`, `Discount` *(optional)*
- Checks stock before inserting
- Updates inventory
- Warns if stock is below reorder level

#### 2. `UpdateOrderDetails`
- Accepts: OrderID, ProductID *(mandatory)*, others optional
- Retains original values with `ISNULL()`
- Updates inventory accordingly

#### 3. `GetOrderDetails`
- Accepts: OrderID
- Fetches details or shows:  
  `"The OrderID XXXX does not exist."`  
- Returns status code (1 for not found)

#### 4. `DeleteOrderDetails`
- Accepts: OrderID and ProductID
- Validates existence before delete
- On failure:  
  Returns `-1` and prints an error message

</details>

---

### 🧮 User Defined Functions

| Function | Description |
|---------|-------------|
| `fn_FormatDateMMDDYYYY(datetime)` | Returns date as `MM/DD/YYYY` |
| `fn_FormatDateYYYYMMDD(datetime)` | Returns date as `YYYYMMDD` |

💡 Reference: [SQL Server Date Format Guide](http://www.sql-server-helper.com/tips/date-formats.aspx)

---

### 👁️ Views

<details>
<summary><strong>Click to Expand</strong></summary>

#### 1. `vwCustomerOrders`
- Columns: `CompanyName`, `OrderID`, `OrderDate`, `ProductID`, `ProductName`, `Quantity`, `UnitPrice`, `Total (Qty × Price)`

#### 2. `vwCustomerOrders (Filtered)`
- Same as above, but filters for **yesterday’s orders**

#### 3. `MyProducts`
- Columns: `ProductID`, `ProductName`, `QuantityPerUnit`, `UnitPrice`, `CompanyName`, `CategoryName`
- Filters out discontinued products
- Joins with `Suppliers` and `Categories`

</details>

---

### 🧨 Triggers

| Trigger Type | Table | Description |
|--------------|-------|-------------|
| `INSTEAD OF DELETE` | `Orders` | Deletes related `OrderDetails` before deleting the order |
| `BEFORE INSERT`     | `OrderDetails` | Validates stock and prevents insert if insufficient |

---

## ✅ Execution Tips

- Use **SQL Server Management Studio (SSMS)**  
- Enable **AdventureWorks2022** database context before execution  
- Handle exceptions in procedures where applicable  
- Validate results via test scripts and sample data

---

## 📂 Suggested Folder Structure

---

## 🎯 Outcomes

By completing this week, you will:
- Create **modular**, **reusable**, and **robust** SQL logic
- Understand how to **abstract logic** via views and procedures
- Enforce **business rules and validations** using triggers

---

Happy Coding! 🚀

