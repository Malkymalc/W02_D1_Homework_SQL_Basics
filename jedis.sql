DROP TABLE lightsabers;
DROP TABLE jedis;
CREATE TABLE jedis (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  -- lightsaber VARCHAR(255),
  rank INT2,
  darkside BOOLEAN
);

-- Create
INSERT INTO jedis (name, rank, darkside)
VALUES ('Luke', 10, false);

INSERT INTO jedis (name, rank, darkside)
VALUES ('Darth', 100, true);


-- SELECT name FROM jedis;
-- SELECT name, rank FROM jedis;

-- Inserts null for columns/attributes not specified
INSERT INTO jedis (name ) VALUES ('Obiwan');


UPDATE jedis
  SET darkside = true
    WHERE name = 'Luke';

UPDATE jedis
  SET darkside = false
  WHERE name = 'Obiwan';


SELECT * FROM jedis;

-- Count instances
SELECT COUNT(*) FROM jedis;
SELECT * FROM jedis ORDER BY name ASC;



INSERT INTO jedis (name, rank, darkside)
VALUES ('Anakin',12, false);

UPDATE jedis
  SET rank = 22, darkside = true
  WHERE name = 'Anakin';

-- Deletes whole record

INSERT INTO jedis (name, rank, darkside)
  VALUES ('Darth', 100, true);

-- **** When the record is deleted, it's id is deleted (cannot be recycled)
DELETE FROM jedis
  WHERE id = 5;

CREATE TABLE lightsabers(
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255),
  owner_id INT8 REFERENCES jedis(id)
);

-- DELETE COLUMN lightsaber FROM jedis;

INSERT INTO lightsabers (colour, hilt_metal, owner_id)
VALUES ('pink', 'gold', 1);

INSERT INTO lightsabers (colour, hilt_metal, owner_id)
VALUES ('blue', 'platinum', 1);

SELECT * FROM jedis;
SELECT * FROM lightsabers;



SELECT jedis.name, lightsabers.colour
  FROM jedis, lightsabers
  WHERE jedis.id = lightsabers.owner_id;



SELECT customers *, pizzas *
  FROM customers, pizzas, orders
  WHERE
