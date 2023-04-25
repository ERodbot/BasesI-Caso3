USE [Esencial Verde];

-- alt_collectors fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO alt_collectors (name, address_id)
SELECT CONCAT('alt_collector', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), FLOOR(RAND(CHECKSUM(NEWID()))*1000)+1
FROM number_sequence
OPTION (MAXRECURSION 32767)

--ev_collectors fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO ev_collectors (name, ev_site_id)
SELECT CONCAT('ev_collector', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), FLOOR(RAND(CHECKSUM(NEWID()))*1000)+1
FROM number_sequence
OPTION (MAXRECURSION 32767)