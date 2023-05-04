USE [Esencial Verde]

DECLARE @new_producers producersTVP;

INSERT INTO @new_producers (name, env_score, corporation_id, address_id)
VALUES ('Mary Poppins', 80, 1, 140),
       ('Lucy Light', 70, 1, 120),
       ('Jhon Jhonson', 45, 1, 100);

EXEC insert_producersTVP @producers = @new_producers;

SELECT * FROM producers