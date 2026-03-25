-- 7 Find all content produced in India
USE netflix;
SELECT*FROM netflixdata WHERE country='India';

-- 8 Retrieve shows with rating TV-MA.
SELECT*FROM netflixdata WHERE rating='TV-MA';

-- 9 Find shows released between 2015 and 2020.
SELECT*FROM netflixdata WHERE release_year Between 2015 and 2020;

-- 10 Retrieve all movies longer than 120 minutes.
SELECT title, duration
FROM netflixdata
WHERE type = 'Movie'
AND CAST(SUBSTRING_INDEX(duration,' ',1) AS UNSIGNED) > 120;

-- 11 List all titles containing the word "Reality Tv".
SELECT *FROM netflixdata WHERE listed_in Like '% Reality TV%';