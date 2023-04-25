USE [Esencial Verde];
-- languages fill--
INSERT INTO languages(name)
VALUES ('Español');

-- control_words for waste_types and wastes fill--
INSERT INTO control_words (control_word_id)
VALUES 
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10);

-- traductions fill--
INSERT INTO traductions(control_word_id, language_id, traduction, [default])
VALUES 
	(1, 1, 'reciclable', 1),
	(2, 1, 'tratable', 1),
	(3, 1, 'no tratable', 1),
	(4, 1, 'plastico', 1),
	(5, 1, 'aceite', 1),
	(6, 1, 'carton', 1),
	(7, 1, 'vidrio', 1),
	(8, 1, 'tela', 1),
	(9, 1, 'aluminio', 1),
	(10, 1, 'cobre', 1);

-- waste_types fill --
INSERT INTO waste_types (control_word_id)
VALUES
	(1),
	(2),
	(3);

-- wastes fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 14
)
INSERT INTO wastes (waste_type_id, control_word_id)
SELECT CEILING((RAND(CHECKSUM(NEWID())) * 3)),FLOOR(RAND(CHECKSUM(NEWID()))*(10-4+1))+4
FROM number_sequence
OPTION (MAXRECURSION 32767);




-- container_types fill --
WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 10000
)
INSERT INTO container_types (capacity, material, brand, model, waste_id)
SELECT CEILING((RAND(CHECKSUM(NEWID())) * 4))*5, CONCAT('material', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), CONCAT('brand', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), CONCAT('model', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1), FLOOR(RAND(CHECKSUM(NEWID()))*(14-1+1))+1
FROM number_sequence
OPTION (MAXRECURSION 32767);
