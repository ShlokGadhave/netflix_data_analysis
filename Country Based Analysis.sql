-- Which countries produce both Movies and TV Shows?
SELECT count(*) as Total_Shows,country FROM netflixdata 
Group By country 
Order By Total_Shows desc;

-- Find the top 3 genres produced by India. 
SELECT listed_in,country FROM netflixdata WHERE country='India'
Order By listed_in Desc 
Limit 3 ;