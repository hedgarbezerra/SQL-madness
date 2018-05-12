SELECT DISTINCT YEAR FROM MOVIE M JOIN RATING R ON M.MID = R.MID AND R.STARS >= 4 ORDER BY M.YEAR;
SELECT  TITLE FROM MOVIE M where NOT EXISTS (SELECT * FROM RATING R WHERE M.MID = R.MID);
SELECT DISTINCT NAME FROM REVIEWER R JOIN RATING RT ON R.RID = RT.RID and RT.RATINGDATE IS NULL;
SELECT DISTINCT 'Reviewer Name: '||R.NAME|| '  Title: '||M.TITLE|| ' Stars: '||RT.STARS FROM REVIEWER R JOIN rating RT on R.RID = RT.RID  JOIN MOVIE M ON M.MID = RT.MID ;
SELECT R.NAME ,M.TITLE, RT.STARS, RT.RATINGDATE FROM REVIEWER R JOIN rating RT on R.RID = RT.RID  JOIN MOVIE M ON M.MID = RT.MID ORDER BY R.NAME,M.TITLE ;
SELECT title, MAX(stars) FROM( SELECT * FROM Movie JOIN Rating ON Movie.mID = Rating.mID) GROUP BY mID ORDER BY title;
SELECT NAME , TITLE,STARS FROM REVIEWER R JOIN rating RT on R.RID = RT.RID  JOIN MOVIE M ON M.MID = RT.MID where R.NAME = M.DIRECTOR;
SELECT title FROM Movie UNION SELECT name FROM Reviewer;
SELECT DISTINCT title FROM Movie WHERE mID NOT IN (SELECT mID FROM (Reviewer NATURAL JOIN Rating) WHERE name = 'Chris Jackson');
SELECT DISTINCT R1.name, R2.name FROM (Reviewer NATURAL JOIN Rating) R1, (Reviewer NATURAL JOIN Rating) R2 WHERE R1.mID = R2.mID AND R1.name < R2.name ORDER BY R1.name, R2.name;
SELECT name, title, stars FROM Movie, Reviewer, Rating WHERE Movie.mID=Rating.mID AND Reviewer.rID = Rating.rID AND Rating.stars= (SELECT MIN(stars) FROM Rating);
SELECT title, AVG(stars) FROM Movie INNER JOIN Rating ON Movie.mID=Rating.mID GROUP BY Movie.mID ORDER BY AVG(stars) DESC, title;
SELECT mov.title, AVG(rat.stars)
FROM movie AS mov, rating AS rat
WHERE mov.mid = rat.mid
GROUP BY mov.title
HAVING AVG(rat.stars) =
(
    SELECT MAX(avg_table.avg)
    FROM
    (
        SELECT mid, AVG(stars) AS avg
        FROM rating
        GROUP BY mid
    ) AS avg_table
)
ORDER BY mov.title DESC;


SELECT mov.title, AVG(rat.stars)
FROM movie AS mov, rating AS rat
WHERE mov.mid = rat.mid
GROUP BY mov.title
HAVING AVG(rat.stars) =
(
    SELECT MIN(avg_table.avg)
    FROM
    (
        SELECT mid, AVG(stars) AS avg
        FROM rating
        GROUP BY mid
    ) AS avg_table
)
ORDER BY mov.title DESC;
SELECT DEPARTMENT_ID, COUNT(*) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

