-- Is the number of Movies increasing or decreasing over the years?
SELECT count(*) as no_of_release ,release_year FROM netflixdata 
group by release_year
Order By no_of_release DESC ;

-- YES THERE IS A INCREASE IN NUMBER OF MOVIES OVER THE YEAR 

-- Which genre has grown the most in the last 5 years?
SELECT count(listed_in) as Count_Genre ,release_year FROM netflixdata Group By release_year Order By Count_Genre DESC Limit 5 ;

-- Yes,There is a increase in content genre 

-- Which rating category dominates Netflix content?

SELECT rating,count(rating) as Total_rating FROM Netflixdata 
Group By rating 
Order By rating desc 
Limit 1 ; 

-- What is the average duration of Movies on Netflix?
SELECT AVG(CAST(REPLACE(duration,' min','') AS UNSIGNED)) AS Avg_Movie_Duration
FROM netflixdata
WHERE type = 'Movie';

-- Which release year produced the most Netflix content?

SELECT count(*) as Total_Releases,release_year FROM netflixdata 
Group By release_year 
Order By Total_Releases 
DESC Limit 1;


