-- 12 List all shows ordered by release_year descending.
SELECT*FROM netflixdata 
WHERE TYPE='TV Show' 
Order By release_year DESC;

-- 13 Display the latest 10 shows added to Netflix.

SELECT*FROM netflixdata 
order by release_year 
DESC LIMIT 10;

-- 14 Show movies sorted alphabetically by title.

SELECT*FROM netflixdata Order By title asc;

