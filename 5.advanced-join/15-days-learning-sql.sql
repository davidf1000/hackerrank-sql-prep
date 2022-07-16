-- https://www.hackerrank.com/challenges/15-days-of-learning-sql/forum/comments/1113991
SELECT submission_date, uniqueHacker, hacker_id, name
FROM 
(
    SELECT submission_date,
    (SELECT COUNT(DISTINCT hacker_id) 
        FROM Submissions s2
            WHERE (SELECT COUNT(DISTINCT s3.submission_date) 
                FROM Submissions s3 
                WHERE s3.submission_date < s1.submission_date AND s2.hacker_id = s3.hacker_id) = DATEDIFF(DAY, '2016-03-01', s1.submission_date) AND s2.submission_date = s1.submission_date) uniqueHacker,
    s1.hacker_id,
    name, 
    ROW_NUMBER() OVER (PARTITION BY s1.submission_date ORDER BY s1.hacker_id) as priority
    FROM Submissions s1
    JOIN Hackers h ON s1.hacker_id = h.hacker_id
    GROUP BY submission_date, s1.hacker_id, name
    HAVING COUNT(s1.hacker_id) >= ALL (SELECT COUNT(s4.hacker_id) FROM Submissions s4 WHERE s4.submission_date = s1.submission_date GROUP BY s4.hacker_id, s4.submission_date)
) tempTable
WHERE priority = 1;