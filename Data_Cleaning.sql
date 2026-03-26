-- 19 Find records where the director is missing.
SELECT*FROM netflixdata WHERE director IS NULL OR director="";

-- 20 Find records where the country is NULL.
SELECT*FROM netflixdata WHERE country IS NULL or country="";

-- 21 Identify duplicate titles in the dataset.
SELECT count(title) as title ,show_id FROM netflixdata  
Group By show_id
Having title>1;