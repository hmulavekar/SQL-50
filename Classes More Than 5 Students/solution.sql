/* Write your PL/SQL query statement below */

SELECT C.CLASS FROM COURSES C GROUP BY C.CLASS HAVING COUNT(C.STUDENT)>4 ;
