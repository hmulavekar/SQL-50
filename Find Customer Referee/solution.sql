-- Here we can use COALESCE to replace null values to 0 or we can use or condition to check if the values are null as those rows are also included in the solution.

SELECT NAME FROM CUSTOMER WHERE COALESCE(REFEREE_ID,0) != 2; -- THIS IS ONE IS LITTLE BIT FASTER

SELECT NAME FROM CUSTOMER WHERE REFEREE_ID <> 2 OR REFEREE_ID IS NULL ;