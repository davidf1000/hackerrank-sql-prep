WITH sample as 
( SELECT 
    MIN(w.coins_needed) AS cn, w.power, wp.age, w.code
FROM
    wands AS w
        INNER JOIN
    wands_property AS wp ON w.code = wp.code
WHERE
    wp.is_evil = 0
GROUP BY w.power , wp.age , w.code)


SELECT 
    w.id, s.age, s.cn, s.power
FROM
    sample AS s,
    wands AS w
WHERE
    s.cn = w.coins_needed
        AND s.power = w.power
        AND s.code = w.code
ORDER BY s.power DESC , s.age DESC
;