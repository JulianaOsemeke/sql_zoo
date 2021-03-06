---Change the query shown so that it displays Nobel prizes for 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

---Show who won the 1962 prize for Literature
 SELECT winner
 FROM nobel
 WHERE yr = 1962
 AND subject = 'Literature'

---Show the year and subject that won 'Albert Einstein' his prize
SELECT yr ,subject
  FROM nobel
  WHERE winner = 'Albert Einstein' 

---Give the name of the 'Peace' winners since the year 2000, including 2000
  SELECT winner
  FROM nobel
  WHERE subject = 'Peace' 
  AND yr >= 2000

---Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
  SELECT * FROM nobel
  WHERE subject = 'Literature' AND 
  AND yr BETWEEN 1980 AND 1989

---Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama
 SELECT * FROM nobel
 WHERE winner
 IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama')

---Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984
  SELECT
  * FROM nobel
  WHERE subject = 'Physics' AND yr = 1980 
  OR subject = 'Chemistry' AND ​yr = 1984

---Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
  SELECT * FROM nobel
  WHERE yr = 1980
  AND subject <> 'Chemistry' 
  AND subject <> 'Medicine'

---Find all details of the prize won by PETER GRÜNBERG
  SELECT * FROM nobel
  WHERE winner = 'PETER GRÜNBERG'

/*List the winners, year and subject where the winner starts with Sir. 
Show the the most recent first, then by name order */
SELECT * FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner 

---Find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel
WHERE winner =  'EUGENE O\' NEILL' 




