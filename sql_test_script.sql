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

SQL>