USE [Esencial Verde]

USE [Esencial Verde]

SELECT
    usrs.name AS employerName,
    usrs.last_name AS employerSurname,
    usrs.username,
    usrs.position,
    prd.name AS producer,
    crp.name AS corporation,
    COUNT(usrs.user_id) AS totalEmployees
FROM producers prd
    LEFT JOIN users usrs ON usrs.producer_id = prd.producer_id
    JOIN corporations crp ON prd.corporation_id = crp.corporation_id
WHERE usrs.user_id >= 200
    AND usrs.position != 'CEO'
    AND usrs.created_at BETWEEN DATEFROMPARTS(2023, 2, 1) AND DATEFROMPARTS(2023, 12, 1)
GROUP BY crp.name, usrs.name, usrs.last_name, usrs.username, usrs.position, prd.name, crp.name
ORDER BY employerName
EXCEPT 
SELECT
    usrs.name AS employerName,
    usrs.last_name AS employerSurname,
    usrs.username,
    usrs.position,
    prd.name AS producer,
    crp.name AS corporation,
    COUNT(usrs.user_id) AS totalEmployees
FROM producers prd
    LEFT JOIN users usrs ON usrs.producer_id = prd.producer_id
    JOIN corporations crp ON prd.corporation_id = crp.corporation_id
WHERE usrs.user_id >= 200
    AND usrs.position != 'CEO'
    AND usrs.created_at < '2023-01-01'
GROUP BY crp.name, usrs.name, usrs.last_name, usrs.username, usrs.position, prd.name, crp.name
ORDER BY employerName;
