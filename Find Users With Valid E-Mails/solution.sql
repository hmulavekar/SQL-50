SELECT * FROM USERS WHERE REGEXP_LIKE(MAIL,'^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$')
--[a-zA-Z] this ensures that first character of the string is always a letter.