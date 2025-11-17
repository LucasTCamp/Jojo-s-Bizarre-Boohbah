SELECT * FROM jojo_stand;
SELECT * FROM boohbah;
SELECT * FROM boohbah_stand_link;

-- QUESTION 1

SELECT b.boohbah_id, AVG(sync_level), b.name
FROM boohbah_stand_link l
JOIN boohbah b ON l.boohbah_id = b.boohbah_id
GROUP BY b.boohbah_id, b.name;

-- QUESTION 2

SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l
    ON b.boohbah_id = l.stand_id
JOIN jojo_stand s
    ON l.stand_id = s.stand_id;

-- QUESTION 3

SELECT name, color
FROM boohbah
WHERE energy_level > 80;

-- QUESTION 4

SELECT b.boohbah_id, l.stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE b.boohbah_id = 2;

-- QUESTION 5

SELECT name
FROM boohbah b
WHERE energy_level > (SELECT AVG(energy_level)
                      FROM boohbah);

-- QUESTION 6

SELECT name
FROM boohbah
WHERE energy_level > (SELECT MAX(power)
                      FROM jojo_stand
                      WHERE season = 3);

-- QUESTION 7

SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l on b.boohbah_id = l.boohbah_id
JOIN jojo_stand s on l.stand_id = s.stand_id
WHERE b.energy_level > 80;
 
-- QUESTION 8
SELECT boohbah_id, sync_level
FROM boohbah_stand_link
WHERE sync_level > (SELECT AVG(sync_level) FROM boohbah_stand_link);

-- QUESTION 9
SELECT boohbah_id, stand_id
FROM boohbah_stand_link
WHERE (boohbah_id, stand_id) IN
      (SELECT boohbah_id, stand_id FROM boohbah_stand_link);

-- QUESTION 10 
MERGE INTO boohbah b
USING boohbah_stand_link l
ON (b.boohbah_id = l.stand_id)
WHEN MATCHED THEN
  UPDATE SET b.energy_level = 999;