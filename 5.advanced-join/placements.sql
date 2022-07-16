
/*
    Friends join with students, Join with Salary for F.ID = ID 
    
    Friends join with students. join with salary for F.Friend_ID = ID
    
    ID Friend_ID ID.Name ID.Salary Friend_ID.Name Friend_ID.Salary
    
    from that table, WHERE ID.salary < Friend_ID.salary then Print
*/

-- SELECT F.ID, S1.Name, P1.Salary, F.Friend_ID, S2.Name, P2.Salary
SELECT S1.Name
FROM Friends as F
INNER JOIN Students as S1
on F.ID = S1.ID
INNER JOIN Packages as P1
on F.ID = P1.ID
INNER JOIN Students as S2
on F.Friend_ID = S2.ID
INNER JOIN Packages as P2
on F.Friend_ID = P2.ID
WHERE P1.Salary < P2.Salary
ORDER BY P2.Salary
;