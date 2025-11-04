# 💼 Employee Database SQL Test

This directory contains SQL scripts for creating and managing an employee database system. The scripts demonstrate various SQL operations including table creation, data insertion, updates, and complex queries.

## 📋 Contents

- `ddl_employee.sql` - Main SQL script containing DDL (Data Definition Language) and DML (Data Manipulation Language) operations

## 🗃️ Database Schema

### Employee Table
```sql
CREATE TABLE employee (
    Name VARCHAR(50),
    Position VARCHAR(50),
    Join_Date DATE,
    Release_Date DATE,
    Year_of_Experience DECIMAL(4,1),
    Salary DECIMAL(10,2)
);
```

## 🔍 Implemented Operations

1. **Table Creation & Initial Data**
   - Creates employee table with necessary fields
   - Inserts initial dataset of 6 employees

2. **Data Insertion**
   - Adds a new employee "Albert" with specified details
   ```sql
   Position: Engineer
   Join Date: 2024-01-24
   Experience: 2.5 years
   Salary: 50K
   ```

3. **Data Update**
   - Updates all engineers' salary to 85K

4. **Data Analysis**
   - Calculates total salary for employees in 2021
   - Identifies top 3 employees by experience
   - Finds engineers with ≤ 3 years of experience using subquery

## 🚀 How to Run

1. Ensure you have a SQL database server installed (MySQL, PostgreSQL, etc.)
2. Connect to your database server
3. Run the script:
   ```bash
   mysql < ddl_employee.sql    # For MySQL
   # OR
   psql -f ddl_employee.sql    # For PostgreSQL
   ```

## 📊 Sample Data Overview

| Name   | Position           | Experience | Salary |
|--------|-------------------|------------|--------|
| Alano  | Manager           | 14 years   | 175K   |
| John   | Assistant Manager | 12 years   | 155K   |
| Jacky  | Solution Architect| 8 years    | 150K   |
| Peter  | Team Leader       | 3 years    | 85K    |
| Allen  | Engineer          | 4 years    | 75K    |
| Aaron  | Engineer          | 1 year     | 80K    |

## 👨‍💻 Author
- Rafi Arian Yusuf

## 🛠️ Technical Notes
- Compatible with most SQL databases
- Uses standard SQL syntax
- Implements various SQL concepts:
  - DDL (CREATE TABLE)
  - DML (INSERT, UPDATE)
  - DQL (SELECT)
  - Subqueries
  - Aggregate functions
  - NULL handling
  - Date operations
