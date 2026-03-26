-- 15 Find the total number of shows for each rating category.
USE NETFLIX;
SELECT rating,count(type)as no_tv_shows FROM netflixdata
Group By rating 
Order By no_tv_shows desc;

-- 16 Determine how many shows were released each year.
SELECT count(type) as shows ,release_year FROM netflixdata 
GROUP BY release_year
ORDER BY shows desc;

-- 17 Find the top 10 countries producing the most Netflix content.
SELECT country,count(title) as Netflix_content FROM netflixdata 
Group By country 
Order By Netflix_content DESC
Limit 10;

-- 18 Count the number of shows available in each genre.

SELECT count(type) as no_of_shows,listed_in FROM netflixdata
Group By listed_in
Order By no_of_shows Desc;

