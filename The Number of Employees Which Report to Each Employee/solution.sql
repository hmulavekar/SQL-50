/* Write your PL/SQL query statement below */

SELECT X.EMPLOYEE_ID,X.NAME,"reports_count","average_age" FROM (SELECT E.REPORTS_TO, ROUND(AVG(E.AGE)) AS "average_age",COUNT(E.EMPLOYEE_ID) AS "reports_count"FROM EMPLOYEES E GROUP BY E.REPORTS_TO) T JOIN EMPLOYEES X ON T.REPORTS_TO = X.EMPLOYEE_ID ORDER BY X.EMPLOYEE_ID;
