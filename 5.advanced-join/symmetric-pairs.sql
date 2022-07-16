
/*
    Functions join with Functions F1 ON F.X = F1.Y and F.Y = F1.X
*/

SELECT F.X, F.Y
FROM Functions as F
INNER JOIN Functions as F1
on F.X = F1.Y and F.Y = F1.X
GROUP BY F.X, F.Y
-- if x == y, then count must be >1, or x!=y 
HAVING F.X < F.Y OR (F.X = F.Y AND COUNT(F.X) > 1)
ORDER BY F.X;