SELECT DISTINCT CITY FROM STATION
WHERE 
LOWER(LEFT(CITY,1)) in ('a','i','u','e','o') 
AND 
LOWER(RIGHT(CITY,1)) in ('a','i','u','e','o');