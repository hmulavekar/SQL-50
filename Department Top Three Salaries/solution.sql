/* Write your PL/SQL query statement below */

SELECT "Department","Name" AS "Employee", "Salary"FROM (SELECT D.NAME AS "Department",E.NAME AS "Name",E.SALARY AS "Salary", DENSE_RANK() OVER (PARTITION BY E.DEPARTMENTID ORDER BY E.SALARY DESC) AS dr FROM EMPLOYEE E JOIN DEPARTMENT D ON E.departmentId  = D.ID ) WHERE DR <4 ;