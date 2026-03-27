-- Which directors have produced the most Netflix content? 
SELECT count(*) as Total_releases,director FROM netflixdata 
Group By director;

-- Which actors appear most frequently in Netflix titles?
SELECT count(cast),title FROM netflixdata Group By title;

-- Which director has worked in the most genres? 
SELECT count(listed_in),director FROM netflixdata
 Group By director;
 
 