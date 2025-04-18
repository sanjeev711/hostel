# hostel

# 🏨 Hostel Management System (DBMS Mini Project)

**Name**: Sanjeev Singh  
**UID**: 23BCA10354  
**Section**: 4B  
**Course**: BCA 4th Semester  
**Subject**: Database Management System  
**Technology Used**: MySQL

---

## 📌 Project Description

This project is a database-driven **Hostel Management System** that enables efficient management of:

- Student data
- Room allocation
- Fee payment tracking
- Complaint handling

It demonstrates core DBMS concepts like **entity relationships**, **mapping constraints**, **foreign keys**, and **query execution**.

---

## 🧱 Modules and Tables

The system includes the following relational tables:

- **Students** – Stores student personal details.
- **Rooms** – Information about room type, capacity, and current occupancy.
- **Wardens** – Warden name and contact information.
- **StudentRoom** – Mapping between students and their allocated rooms (Many-to-Many relationship).
- **Fees** – Tracks fee amount and payment status for students.
- **Complaints** – Student-submitted complaints with resolution status.

---

## ⚙️ Functionalities Implemented

- Insert student, room, warden, fee, and complaint data.
- Establish and enforce mapping constraints using foreign keys.
- Retrieve student details by gender, age, or room.
- Display fee status: paid/unpaid.
- Register and track complaints.
- Perform joins, aggregate functions, grouping, and subqueries.

---

## 🧾 Features Demonstrated

- ✅ Primary and Foreign Key Constraints  
- ✅ Many-to-Many Relationship using a Mapping Table  
- ✅ Aggregate Functions (COUNT, AVG, SUM)  
- ✅ Joins (INNER, LEFT JOIN)  
- ✅ Filtering, Sorting, and Grouping  
- ✅ Subqueries for advanced logic

---

## 📊 Queries Included

**20 SQL Queries** such as:

- Display all student data  
- Filter by gender, age  
- Join students with rooms and fees  
- Count total students  
- Calculate average fee paid  
- Display students with unpaid fees  
- Group complaints by status  
- List students who paid above-average fees  
- Show top 5 highest fee payers  
- Join with LEFT JOIN to show unmatched data  

---

## 💻 How to Run

1. Open **MySQL Workbench** or any SQL interface.
2. Copy the SQL file: `hostel_management.sql` from this repo.
3. Run the SQL script to:
   - Create the database and tables
   - Insert sample data (10 values each)
   - Execute the 20 SQL queries

---

## 🎯 Learning Outcomes

- Learned how to design and implement a normalized relational schema.
- Understood mapping relationships using foreign keys.
- Practiced writing efficient and readable SQL queries.
- Simulated real-world hostel use cases using database logic.
- Gained insight into DBMS workflows and optimization.

---

## 📝 Conclusion

This mini-project presents a **modular and real-world Hostel Management System** designed using **MySQL**. It effectively captures student management, fee monitoring, and issue tracking. The structure is extensible and can be used as a foundation for full-stack development.

---

> **Submitted by:** Sanjeev Singh  
> **UID**: 23BCA10354  
> **Section**: 4B  
