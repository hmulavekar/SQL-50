/* Write your PL/SQL query statement below */

SELECT X,Y,Z,(CASE WHEN X+Y>Z AND Y+Z>X AND X+Z> Y THEN 'Yes' ELSE 'No' END) AS "Triangle" FROM Triangle  ;