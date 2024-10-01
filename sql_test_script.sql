JOINS OPERATIONS

SELECT 
    e.first_name, 
    e.last_name, 
    d.dept_name 
FROM 
    Employees e
INNER JOIN 
    Departments d ON e.dept_id = d.dept_id;


QUERY 2

SELECT e.first_name, e.last_name, d.dept_name 
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id;

===========================================================================================================================

SQL> create table employee;
create table employee
                    *
ERROR at line 1:
ORA-00906: missing left parenthesis


SQL> create table employee
  2  exit
  3
SQL>
SQL>
SQL> exit
Disconnected from Oracle Database 10g Express Edition Release 10.2.0.1.0 - Production

C:\Users\user>sqlplus

SQL*Plus: Release 10.2.0.1.0 - Production on Tue Sep 24 12:52:44 2024

Copyright (c) 1982, 2005, Oracle.  All rights reserved.

Enter user-name: practise
Enter password:

Connected to:
Oracle Database 10g Express Edition Release 10.2.0.1.0 - Production

SQL> create table employee(employee_name varchar(50) not null, id number not null,primary key(id));

Table created.

SQL> select * from employee;

no rows selected

SQL> INSERT INTO employee (employee_name, id) VALUES ('Gatera', 2));
INSERT INTO employee (employee_name, id) VALUES ('Gatera', 2))
                                                             *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO employee (employee_name, id) VALUES ('Gatera', 2);

1 row created.

SQL> select * from employee;

EMPLOYEE_NAME                                              ID
-------------------------------------------------- ----------
Gatera                                                      2

SQL> delete table employee;
delete table employee
       *
ERROR at line 1:
ORA-00903: invalid table name


SQL> delete table employee;
delete table employee
       *
ERROR at line 1:
ORA-00903: invalid table name


SQL> delete table employee;
delete table employee
       *
ERROR at line 1:
ORA-00903: invalid table name


SQL> drop table employee;

Table dropped.

SQL> CREATE TABLE Departments (
  2      dept_id NUMBER PRIMARY KEY,
  3      dept_name VARCHAR2(100) NOT NULL
  4  );

Table created.

SQL> CREATE TABLE Employees (
  2      emp_id NUMBER PRIMARY KEY,
  3      first_name VARCHAR2(50) NOT NULL,
  4      last_name VARCHAR2(50) NOT NULL,
  5      hire_date DATE,
  6      dept_id NUMBER,
  7      FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
  8  )
  9
SQL> create table Employees(emp_id number primary key, first_name varchar(50) not null, last_name varchar(50) not null,dept_id number, foreign key()
dept_id references Departments(dept_id));
create table Employees(emp_id number primary key, first_name varchar(50) not null, last_name varchar(50) not null,dept_id number, foreign key()dept_id references Departments(dept_id))
                                                                                                                                              *
ERROR at line 1:
ORA-00936: missing expression


SQL> create table Employees(emp_id number primary key, first_name varchar(50) not null, last_name varchar(50) not null,dept_id number, foreign key(dept_id) references Departments(dept_id));

Table created.

SQL> INSERT INTO Departments (dept_id, dept_name) VALUES (1, 'Human Resources');

1 row created.

SQL> INSERT INTO Departments (dept_id, dept_name) VALUES (2, 'IT');

1 row created.

SQL> INSERT INTO Departments (dept_id, dept_name) VALUES (3, 'Sales');

1 row created.

SQL> INSERT INTO Employees (emp_id, first_name, last_name,  dept_id) VALUES (1, 'Gatera', 'Iriza', 1);

1 row created.

SQL> INSERT INTO Employees (emp_id, first_name, last_name,, dept_id) VALUES (2, 'Ben', 'Nziza', 2);
INSERT INTO Employees (emp_id, first_name, last_name,, dept_id) VALUES (2, 'Ben', 'Nziza', 2)
                                                     *
ERROR at line 1:
ORA-01747: invalid user.table.column, table.column, or column specification


SQL> INSERT INTO Employees (emp_id, first_name, last_name,  dept_id) VALUES (3, 'Isaie', 'Niyoyita',1);

1 row created.

SQL> INSERT INTO Employees (emp_id, first_name, last_name,  dept_id) VALUES (4, 'Bob', 'Marley', 3);

1 row created.

SQL> INSERT INTO Employees (emp_id, first_name, last_name, dept_id) VALUES (2, 'Ben', 'Nziza', 2);

1 row created.

SQL> select * from Departments;

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
         1
Human Resources

         2
IT

         3
Sales


SQL> select * from Employees;

    EMP_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                             DEPT_ID
-------------------------------------------------- ----------
         1 Gatera
Iriza                                                       1

         3 Isaie
Niyoyita                                                    1

         4 Bob
Marley                                                      3


    EMP_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                             DEPT_ID
-------------------------------------------------- ----------
         2 Ben
Nziza                                                       2


SQL> select dept_name from Departments;

DEPT_NAME
--------------------------------------------------------------------------------
Human Resources
IT
Sales

SQL> select first_name from Employees where dept_id=1;

FIRST_NAME
--------------------------------------------------
Gatera
Isaie

SQL> INSERT INTO Departments (dept_id, dept_name) VALUES (4, 'Marketing');

1 row created.

SQL> select dept_name from Departments;

DEPT_NAME
--------------------------------------------------------------------------------
Human Resources
IT
Sales
Marketing

SQL> SELECT
  2      e.first_name,
  3      e.last_name,
  4      d.dept_name
  5  FROM
  6      Employees e
  7  INNER JOIN
  8      Departments d ON e.dept_id = d.dept_id;

FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------------------------------------
Isaie
Niyoyita
Human Resources

Gatera
Iriza
Human Resources

FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------------------------------------

Ben
Nziza
IT

Bob
Marley

FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
DEPT_NAME
--------------------------------------------------------------------------------
Sales


SQL> drop table Departments;
drop table Departments
           *
ERROR at line 1:
ORA-02449: unique/primary keys in table referenced by foreign keys


SQL> select * from departments;

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
         1
Human Resources

         2
IT

         3
Sales


   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
         4
Marketing


SQL> commit;

Commit complete.

SQL> select * from Employess;
select * from Employess
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from Employees;

    EMP_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                             DEPT_ID
-------------------------------------------------- ----------
         1 Gatera
Iriza                                                       1

         3 Isaie
Niyoyita                                                    1

         4 Bob
Marley                                                      3


    EMP_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                             DEPT_ID
-------------------------------------------------- ----------
         2 Ben
Nziza                                                       2


SQL> UPDATE Departments SET dept_name = 'IT Support' WHERE dept_id = 2;

1 row updated.

SQL> DELETE FROM Departments WHERE dept_id = 4;

1 row deleted.

SQL> SELECT first_name, last_name
  2  FROM Employees
  3  WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'IT');

no rows selected

SQL> SELECT 
    e.emp_id, 
    e.first_name, 
    e.last_name, 
    e.hire_date, 
    d.dept_name
FROM 
    Employees e
JOIN 
    Departments d 
ON 
    e.dept_id = d.dept_id;

SQL>emp_id | first_name | last_name | hire_date | dept_name
-------|------------|-----------|-----------|------------
  101  | John       | Doe       | 2024-01-01| HR
  102  | Jane       | Smith     | 2023-12-15| Finance
  103  | Michael    | Brown     | 2022-07-10| IT

SQL>CREATE TABLE EmpDep AS
SELECT e.emp_id, e.first_name, e.last_name, e.hire_date, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

Table Created.

SQL> ALTER TABLE Employees
1 ADD hire_date DATE;

SQL>UPDATE Employees
1 SET hire_date = '2023-01-01'
2 WHERE emp_id = 1;

3 UPDATE Employees
4 SET hire_date = '2022-06-15'
5 WHERE emp_id = 2;

6 UPDATE Employees
7 SET hire_date = '2021-12-10'
8 WHERE emp_id = 3;

SQL> SELECT emp_id, first_name, last_name, hire_date
1 FROM Employees;

SQL> CREATE TABLE EmpDep AS
SELECT e.emp_id, e.first_name, e.last_name, e.hire_date, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

Table Created.

SQL> INSERT INTO Employees (emp_id, first_name, last_name, hire_date, dept_id)
VALUES (5, 'Kamaliza', 'Gatera', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1);

INSERT INTO Employees (emp_id, first_name, last_name, hire_date, dept_id)
VALUES (6, 'John', 'Doe', TO_DATE('2023-01-20', 'YYYY-MM-DD'), 1);

INSERT INTO Employees (emp_id, first_name, last_name, hire_date, dept_id)
VALUES (7, 'Jane', 'Smith', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 2);

INSERT INTO Employees (emp_id, first_name, last_name, hire_date, dept_id)
VALUES (8, 'Alice', 'Johnson', TO_DATE('2021-11-05', 'YYYY-MM-DD'), 1);

INSERT INTO Employees (emp_id, first_name, last_name, hire_date, dept_id)
VALUES (9, 'Bob', 'Brown', TO_DATE('2020-08-30', 'YYYY-MM-DD'), 3);

5 rows inserted.

SQL> CREATE TABLE Experts (
    emp_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    hire_date DATE,
    dept_id NUMBER,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

Table created.

SQL> INSERT INTO Experts (emp_id, first_name, last_name, hire_date, dept_id)
SELECT emp_id, first_name, last_name, hire_date, dept_id
FROM Employees
WHERE hire_date < TO_DATE('2023-01-01', 'YYYY-MM-DD');

SQL> CREATE TABLE Junior_Emp (
    emp_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    hire_date DATE,
    dept_id NUMBER,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

Table Created.

SQL> INSERT INTO Junior_Emp (emp_id, first_name, last_name, hire_date, dept_id)
SELECT emp_id, first_name, last_name, hire_date, dept_id
FROM Employees
WHERE hire_date >= TO_DATE('2024-01-01', 'YYYY-MM-DD');

SQL>


