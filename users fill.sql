USE [Esencial Verde];



DECLARE @sha2_var varbinary(256);
DECLARE @checksum varbinary(120);

SET @sha2_var = HASHBYTES('SHA2_256', 'password');
SET @checksum = SUBSTRING(@sha2_var, 1, 120);


SELECT @checksum;

DECLARE @Names TABLE (Name VARCHAR(50))
DECLARE @LastNames TABLE (LastName VARCHAR(50))
DECLARE @Positions TABLE (Position VARCHAR(50))

INSERT INTO @Names (Name)
VALUES 
    ('John'),
    ('Emily'),
    ('Michael'),
    ('Sarah'),
    ('David'),
    ('Jessica'),
    ('Robert'),
    ('Amanda'),
    ('Daniel'),
    ('Rachel'),
    ('Christopher'),
    ('Melissa'),
    ('Kevin'),
    ('Lauren'),
    ('William'),
    ('Ashley'),
    ('James'),
    ('Nicole'),
    ('Brian'),
    ('Stephanie'),
    ('Matthew'),
    ('Kimberly'),
    ('Jason'),
    ('Michelle'),
    ('Andrew'),
    ('Elizabeth'),
    ('Justin'),
    ('Danielle'),
    ('Eric'),
    ('Christina');

INSERT INTO @LastNames (LastName)
VALUES 
    ('Smith'),
    ('Johnson'),
    ('Williams'),
    ('Jones'),
    ('Brown'),
    ('Davis'),
    ('Miller'),
    ('Wilson'),
    ('Moore'),
    ('Taylor'),
    ('Anderson'),
    ('Thomas'),
    ('Jackson'),
    ('White'),
    ('Harris'),
    ('Martin'),
    ('Thompson'),
    ('Garcia'),
    ('Martinez'),
    ('Robinson'),
    ('Clark'),
    ('Rodriguez'),
    ('Lewis'),
    ('Lee'),
    ('Walker'),
    ('Hall'),
    ('Allen'),
    ('Young'),
    ('King'),
    ('Wright');

INSERT INTO @Positions (Position)
VALUES
    ('CEO'),
    ('COO'),
    ('CFO'),
    ('CTO'),
    ('VP of Sales'),
    ('VP of Marketing'),
    ('VP of Operations'),
    ('Director of Finance'),
    ('Director of HR'),
    ('Manager');




DELETE FROM users
WHERE user_id > 0;

WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO Users (name, last_name, password, position, producer_id, alt_collector_id, ev_collector_id, enabled, created_at, updated_at, computer, username, checksum)
SELECT 
	(SELECT TOP 1 Name FROM @Names ORDER BY CHECKSUM(NEWID(), Name) % (SELECT COUNT(*) FROM @Names)), 
    (SELECT TOP 1 LastName FROM @LastNames ORDER BY NEWID()), 
    CONCAT('pass', CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1),
    (SELECT TOP 1 Position FROM @Positions ORDER BY NEWID()), 
    CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1, 
    CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1, 
    CEILING(RAND(CHECKSUM(NEWID())) * 1000) + 1, 
    1, 
    DATEADD(day, ABS(CHECKSUM(NEWID())) % 365, DATEFROMPARTS(2023, 1, 1)),  
    DATEADD(day, ABS(CHECKSUM(NEWID())) % 365, DATEFROMPARTS(2023, 1, 1)), 
    'pc', 'me', 
    @checksum
FROM number_sequence
OPTION (MAXRECURSION 32767);

















SELECT * FROM @Names;












SELECT * FROM USERS