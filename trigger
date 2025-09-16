SQL*Plus: Release 21.0.0.0.0 - Production on Tue Sep 9 16:04:08 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Sep 09 2025 13:25:00 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> create table library(sr_no int,book_name varchar(50),pub varchar(50),price int);

Table created.

SQL> alter tabel library add d_pur date;
alter tabel library add d_pur date
      *
ERROR at line 1:
ORA-00940: invalid ALTER command


SQL> alter table library add d_pur date;

Table altered.

SQL> desc library;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SR_NO                                              NUMBER(38)
 BOOK_NAME                                          VARCHAR2(50)
 PUB                                                VARCHAR2(50)
 PRICE                                              NUMBER(38)
 D_PUR                                              DATE

SQL> insert into library (sr_no, book_name, pub, price, d_pur) values
  2  (1, 'Java Basics', 'Tech Press', 120, TO_DATE('2023-06-01', 'YYYY-MM-DD')),
  3  (2, 'SQL Guide', 'Data Books', 180, TO_DATE('2023-07-01', 'YYYY-MM-DD')),
  4  (3, 'Python for All', 'Code Publishing', 220, TO_DATE('2023-08-01', 'YYYY-MM-DD')),
  5  (4, 'Web Dev 101', 'Web Media', 170, TO_DATE('2023-09-01', 'YYYY-MM-DD')),
  6  (5, 'AI Essentials', 'AI Books', 250, TO_DATE('2023-10-01', 'YYYY-MM-DD'));
(1, 'Java Basics', 'Tech Press', 120, TO_DATE('2023-06-01', 'YYYY-MM-DD')),
                                                                          *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> insert into library (sr_no, book_name, pub, price, d_pur)
  2  values
  3  (1, 'Java Basics', 'Tech Press', 120, TO_DATE('2023-06-01', 'YYYY-MM-DD'));

1 row created.

SQL>
SQL> insert into library (sr_no, book_name, pub, price, d_pur)
  2  values
  3  (2, 'SQL Guide', 'Data Books', 180, TO_DATE('2023-07-01', 'YYYY-MM-DD'));

1 row created.

SQL>
SQL> insert into library (sr_no, book_name, pub, price, d_pur)
  2  values
  3  (3, 'Python for All', 'Code Publishing', 220, TO_DATE('2023-08-01', 'YYYY-MM-DD'));

1 row created.

SQL>
SQL> insert into library (sr_no, book_name, pub, price, d_pur)
  2  values
  3  (4, 'Web Dev 101', 'Web Media', 170, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

1 row created.

SQL>
SQL> insert into library (sr_no, book_name, pub, price, d_pur)
  2  values
  3  (5, 'AI Essentials', 'AI Books', 250, TO_DATE('2023-10-01', 'YYYY-MM-DD'));

1 row created.

SQL>
SQL> @C C:\Users\System05\Documents\DBMS\trigger.sql
SP2-0310: unable to open file "C.sql"
SQL> @C C:\Users\System05\Documents\DBMS\triggger.sql
SP2-0310: unable to open file "C.sql"
SQL> @'C:\Users\System05\Documents\DBMS\triggger.sql'

Warning: Trigger created with compilation errors.

SQL> create table bk_lib as select *  from library;

Table created.

SQL> set serveroutput on;
SQL> @'C:\Users\System05\Documents\DBMS\triggger.sql'

Warning: Trigger created with compilation errors.

SQL> select * from bk_lib;

     SR_NO BOOK_NAME
---------- --------------------------------------------------
PUB                                                     PRICE D_PUR
-------------------------------------------------- ---------- ---------
         1 Java Basics
Tech Press                                                120 01-JUN-23

         2 SQL Guide
Data Books                                                180 01-JUL-23

         3 Python for All
Code Publishing                                           220 01-AUG-23


     SR_NO BOOK_NAME
---------- --------------------------------------------------
PUB                                                     PRICE D_PUR
-------------------------------------------------- ---------- ---------
         4 Web Dev 101
Web Media                                                 170 01-SEP-23

         5 AI Essentials
AI Books                                                  250 01-OCT-23


SQL>
