SELECT DISTINCT CITY FROM STATION
WHERE
LOWER(LEFT(CITY,1)) NOT IN ('a','i','u','e','o') 
OR 
LOWER(RIGHT(CITY,1)) NOT IN ('a','i','u','e','o');