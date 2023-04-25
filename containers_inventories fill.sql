USE [Esencial Verde]

SELECT * FROM containers_inventories;

-- container_inventories fill for an ev_site --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 30000
)
INSERT INTO containers_inventories (container_type_id, ev_site_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
SELECT CEILING(RAND(CHECKSUM(NEWID())) * 49999)+28, CEILING(RAND(CHECKSUM(NEWID())) * 50000), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767)

-- container_inventories fill for an alt_collector --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 30000
)
INSERT INTO containers_inventories (container_type_id, alt_collector_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
SELECT CEILING(RAND(CHECKSUM(NEWID())) * 49999)+28, CEILING(RAND(CHECKSUM(NEWID())) * 50000)+1, CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767)

-- container_inventories fill for a producer --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 30000
)
INSERT INTO containers_inventories (container_type_id, producer_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
SELECT CEILING(RAND(CHECKSUM(NEWID())) * 49999)+28, CEILING(RAND(CHECKSUM(NEWID())) * 50000), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767)

-- container_inventories fill for an ev_collector --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 30000
)
INSERT INTO containers_inventories (container_type_id, ev_collector_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
SELECT CEILING(RAND(CHECKSUM(NEWID())) * 49999)+28, CEILING(RAND(CHECKSUM(NEWID())) * 50000), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), CEILING(RAND(CHECKSUM(NEWID())) * 100), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767)