USE [Esencial Verde];

--corporations fill --
INSERT INTO corporations (name)
VALUES('corp1');

-- producers fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO producers (name, env_score, corporation_id, address_id, computer, username, checksum, created_at, updated_at)
SELECT CONCAT('producer', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), FLOOR(RAND(CHECKSUM(NEWID()))*100)+1, 1, FLOOR(RAND(CHECKSUM(NEWID()))*1000)+1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767)