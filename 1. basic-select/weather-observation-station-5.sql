-- select the country and len(country) with ordered len, county, and limit the query to 1
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY  ASC
LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;