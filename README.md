# Healthcare-DBMS-Project
This is a database management project our team did on a healthcare hospital system to manage many data points and create a stable and optimized Database System.
This project consists of 16 tables.

![DBMS CIE 3 (1)](https://user-images.githubusercontent.com/75985765/147092770-d5669056-0843-44a8-b37f-804b82052aa0.png)

Here, we have implemented all the possible SQL queries that one must know while working with SQL data-base particularly while fetching and cleaning the data

This project includes implementation of most SQL concepts.
I have listed them here.

## 1 Functions
`HOSPITALITY_COST()` finds total cost in bill for a given patient

`DOCTOR_TREATING_PATIENTS` finds the number of patients being treated by given doctor

`TOTAL_ADMITTED_PATIENTS` finds the number of all patients admitted into hospital

`is_room_ava` find whether the room available? returns 1 if yes returns 0 if no
## 2 Procedures
`NON_CRITICAL_PATIENTS()` procedure finds all the patients who dont have diabetis, asthama, heart problems and hiv

`CRITICAL_PATIENTS()` procedure finds all the patients who have atleast 3 of diabetis, asthama, heart problems or hiv

`DOCTOR_EXPERIENCE()` procedure finds the experience of a given doctor
## 3 Triggers
`pat_trig` trigger which makes archive of patients discharged

`emp_trig` trigger which makes archive of ex-employees

`doc_trig` trigger which makes archive of ex-doctors 
## 4 Views
## 5 Users and Roles
The roles are `sysadmin`, `doctor` and `staff`

The users are jeffery and kelly
## 6 Cursors
## 7 Other Relative Queries

Following are the queries we have implemented.  

**1. WHERE Clause**
MySQL WHERE Clause is used with SELECT, INSERT, UPDATE and DELETE clause to filter the results. It specifies a specific position where you have to do the operation.

**2. Distinct Clause**
MySQL DISTINCT clause is used to fetch only the unique records from the table. The DISTINCT clause is only used with the SELECT statement.

**3. ORDER BY Clause**
The MYSQL ORDER BY Clause is used to sort the records in ascending or descending order.

**4. Group By Clause**
The MYSQL GROUP BY Clause is used to collect data from multiple records and group the result by one or more column. It is generally used in a SELECT statement. You can also use some aggregate functions like COUNT, SUM, MIN, MAX, AVG etc. on the grouped column.

**5. HAVING Clause**
MySQL HAVING Clause : MySQL HAVING Clause is used with GROUP BY clause. It always returns the rows where condition is TRUE.

**6. AND Condition**
The MySQL AND condition is used with SELECT, INSERT, UPDATE or DELETE statements to test two or more conditions in an individual query.

**7. OR Condition**

**8. AND & OR Condition**

**9. Like**
In MySQL, LIKE condition is used to perform pattern matching to find the correct result. It is used in SELECT, INSERT, UPDATE and DELETE statement with the combination of WHERE clause.

**10. In Condition**
The MySQL IN condition is used to reduce the use of multiple OR conditions in a SELECT, INSERT, UPDATE and DELETE statement.

**11. IS NULL Condition**
MySQL IS NULL condition is used to check if there is a NULL value in the expression. It is used with SELECT, INSERT, UPDATE and DELETE statement.

**12. NOT NULL Condition**
MySQL IS NOT NULL condition is used to check the NOT NULL value in the expression. It is used with SELECT, INSERT, UPDATE and DELETE statements.

**13. BETWEEN Condition**
The MYSQL BETWEEN condition specifies how to retrieve values from an expression within a specific range. It is used with SELECT, INSERT, UPDATE and DELETE statement.


Thank You for you time.

# Happy Coding🙂
