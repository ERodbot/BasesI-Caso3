USE [Esencial Verde];
-- regions fill --
INSERT INTO regions (name)
VALUES ('region1');

-- countries fill --
INSERT INTO countries (name, initials, region_id)
VALUES('country1', 'c', 1);

-- state/province fill --
INSERT INTO [state/provinces] (name, initial, area_code, country_id, region_id)
VALUES ('state1', 's', '12345', 1, 1);

-- cities fill --
INSERT INTO cities (name, [state/province_id], region_id)
VALUES ('city1', 1, 1);

-- district fill --
INSERT INTO districts (name, city_id, region_id)
VALUES ('district1', 1, 1);

-- addresses fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO addresses(location, zip_code, district_id)
SELECT geography::STGeomFromText('POINT(' + CAST(RAND() * 360 - 180 AS VARCHAR(20)) + ' ' + CAST(RAND(CHECKSUM(NEWID())) * 180 - 90 AS VARCHAR(20)) + ')', 4326),
CEILING(RAND(CHECKSUM(NEWID())) * 9999) + 1, 1
FROM number_sequence
OPTION (MAXRECURSION 32767)

-- ev_sites fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO ev_sites (name, address_id)
SELECT CONCAT('ev_site', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), FLOOR(RAND(CHECKSUM(NEWID()))*(100-1+1)+1)
FROM number_sequence
OPTION (MAXRECURSION 32767)
