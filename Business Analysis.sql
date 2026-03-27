-- 5 countries produce the most Netflix content?
SELECT country,count(type) as Total_Content FROM netflixdata 
Group By country 
Order By Total_Content Desc 
Limit 5 ;

-- percentage of total content is Movies vs TV Shows?
SELECT
type,
COUNT(*) AS Content,
ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM
netflixdata
GROUP BY
type;

-- Which year had the highest number of releases?
SELECT count(type) as Total_shows ,release_year FROM netflixdata 
Group By release_year 
Order By Total_shows DESC 
LIMIT 1;

-- What are the top 10 most common genres on Netflix?
SELECT count(type) as Count_Genre ,listed_in FROM netflixdata 
Group By listed_in 
Order By Count_Genre 
DESC LIMIT 10  ;


