-- a node is root when the P is null
-- a node is leaf when node not in P
-- else : inner
SELECT CASE
    WHEN P IS null THEN CONCAT(N, ' Root')
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
    ELSE CONCAT(N, ' Leaf')
END
FROM BST
ORDER BY N;
