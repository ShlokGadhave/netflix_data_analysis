USE netflix;
-- Basic Queries 

-- 1. Count the number of Movies vs TV Shows
SELECT type,count(*) as Total_Number FROM netflixdata 
Group By type;

-- 2.Retrieve all records from the dataset.
SELECT*FROM netflixdata;

-- 3 Find the total number of shows available.
SELECT count(show_id) FROM netflixdata;

-- 4 Display only the title, type, and release_year columns.
SELECT title,type,release_year FROM netflixdata;

-- 5 Find all shows released after 2018.
SELECT*FROM netflixdata WHERE release_year=2018;

-- 6 List all TV Shows available in the dataset.
SELECT*FROM netflixdata WHERE type='TV SHOW';




