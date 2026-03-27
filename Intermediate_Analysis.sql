-- 22 Find the top 10 directors with the most shows on Netflix.

SELECT count(*) as no_of_shows , director FROM netflixdata 
WHERE director IS NOT NULL
Group by director 
Order by no_of_shows desc
LIMIT 10;

-- 23 Determine which year Netflix added the most content.
SELECT count(show_id) as show_ids,release_year FROM netflixdata group by release_year
Order By show_ids
 desc Limit 1 ;
 
-- 24 Find the average release year of Movies vs TV Shows
SELECT avg(release_year) as Average_Year FROM netflixdata;

-- 25 Identify the most common rating category on Netflix.
SELECT count(rating),rating AS Common_Rating FROM netflixdata 
Group By rating 
Order By count(rating) DESC;