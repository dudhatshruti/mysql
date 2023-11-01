1. select lower(name) from table1_client;
+----------------+
| lower(name)    |
+----------------+
| ivan bayross   |
| mamta          |
| chhaya bankar  |
| ashwini joshi  |
| deepak sharma  |
+----------------+

 2.select upper(name) from table1_client;
+----------------+
| upper(name)    |
+----------------+
| IVAN BAYROSS   |
| MAMTA          |
| CHHAYA BANKAR  |
| ASHWINI JOSHI  |
| DEEPAK SHARMA  |
+----------------+

3. select concat(clientNo," ",name) from table1_client;
+---------------------------+
| concat(clientNo," ",name) |
+---------------------------+
| c00001 IVAN bayross       |
| c00002 mamta              |
| c00003 chhaya bankar      |
| c00004 ashwini joshi      |
| c00006 deepak sharma      |
+---------------------------+

4. select lpad (name,15,"*")as name from table1_client;
+-----------------+
| name            |
+-----------------+
| ***IVAN bayross |
| **********mamta |
| **chhaya bankar |
| **ashwini joshi |
| *deepak sharma  |
+-----------------+

5. select rpad (name,15,"*")as name from table1_client;
+-----------------+
| name            |
+-----------------+
| IVAN bayross*** |
| mamta********** |
| chhaya bankar** |
| ashwini joshi** |
| deepak sharma * |
+-----------------+

select ltrim ('      shruti') from table1_client;
+------------------------+
| ltrim ('      shruti') |
+------------------------+
| shruti                 |
| shruti                 |
| shruti                 |
| shruti                 |
| shruti                 |
+------------------------+


select rtrim ('shruti      ')  as rtrim from table1_client;
+--------+
| rtrim  |
+--------+
| shruti |
| shruti |
| shruti |
| shruti |
| shruti |
+--------+

select replace('sql Tutorial', 'T', 'A') as name from table1_client;
+--------------+
| name         |
+--------------+
| sql Autorial |
| sql Autorial |
| sql Autorial |
| sql Autorial |
| sql Autorial |
+--------------+

select substr("SQL Tutorial",5,4) from table1_client;
+----------------------------+
| substr("SQL Tutorial",5,4) |
+----------------------------+
| Tuto                       |
| Tuto                       |
| Tuto                       |
| Tuto                       |
| Tuto                       |
+----------------------------+

select length("sql Tutorial") as length from table1_client;

+------------------------+
| length("sql Tutorial") |
+------------------------+
|                     12 |
|                     12 |
|                     12 |
|                     12 |
|                     12 |
+------------------------+

select instr("tutorial","o") from table1_client;

+-----------------------+
| instr("tutorial","o") |
+-----------------------+
|                     4 |
|                     4 |
|                     4 |
|                     4 |
|                     4 |
+-----------------------+

