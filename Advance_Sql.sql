-- 26 Find the top 10 directors with the most shows on Netflix.
SELECT director,
COUNT(*) AS total_show,
RANK() OVER (ORDER BY COUNT(*) DESC) AS ranked_director
FROM netflixdata
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_show DESC
LIMIT 10;

-- 27 Find the top show for each release year.
SELECT *
FROM (
    SELECT title,
           release_year,
           RANK() OVER (PARTITION BY release_year ORDER BY title) AS rnk
    FROM netflixdata
) t
WHERE rnk = 1;

SELECT release_year, MIN(title) AS top_show
FROM netflixdata
GROUP BY release_year;

-- 28 Determine the percentage of Movies vs TV Shows.
SELECT type, Count(*) as Total_shows ,round(Count(*)*100.00/SUM(count(*)) over(),2 ) as percentage 
FROM netflixdata
Group By type;

-- 29 Identify countries producing both Movies and TV Shows.
SELECT country,title,count(*) FROM netflixdata 
WHERE country IS NOT NULL 
Group by country,title;

-- 30 