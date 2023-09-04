use assignment2;

-- A view for query 4 in the previous task
CREATE VIEW Query4 AS
SELECT * FROM Buiding_the_pizza
WHERE size = "M" OR "XL";

-- A view for query 9 in the previous task
CREATE VIEW Query9 AS
SELECT AVG(Total) FROM receipt
GROUP BY Receipt_id
HAVING Receipt_id LIKE 980;
  