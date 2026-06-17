
-- 1. Find the player who won "Finals Most Valuable Player" Accolade

SELECT FirstName || ' ' || LastName AS name
  FROM Players
    WHERE PlayerID IN (SELECT Id FROM Accolades WHERE Accolade = "Finals Most Valuable Player");


-- 2. Find all players who score more than 25 points, have at least 5 assists, and won an accolade

SELECT p.FirstName || ' ' p.LastName AS name
  FROM Players p
    JOIN Accolades a ON p.PlayerID = a.id
      WHERE p.Points >= 25 AND p.Assists >= 5;


-- 3. List all players who won at least 3 accolades

SELECT p.FirstName, p.LastName
  FROM Players p
    JOIN Accolades a ON p.PlayerID = a.Id GROUP BY p.PlayerID HAVING COUNT(*) >= 3;
