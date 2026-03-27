
# Netflix Data Analysis using MySQL 🎬📊

## Project Overview

This project analyzes the **Netflix Movies and TV Shows dataset** using **MySQL**.
The goal of this project is to explore the Netflix content library and answer important analytical questions related to content trends, directors, countries, ratings, and release patterns.

The dataset contains information about **movies and TV shows available on Netflix**, including title, director, cast, country, release year, rating, and duration.

---

## Dataset Information

The dataset includes the following important columns:

* show_id
* type (Movie / TV Show)
* title
* director
* cast
* country
* date_added
* release_year
* rating
* duration
* listed_in (genre)
* description

Total Records: **~8800+ Netflix titles**

---

## Tools Used 🛠️

* MySQL
* SQL Queries
* VS Code
* Git & GitHub

---

## SQL Concepts Used 📚

This project demonstrates the use of multiple SQL concepts:

* SELECT statements
* Filtering using WHERE
* Sorting using ORDER BY
* Aggregation functions (COUNT, AVG, MAX, MIN)
* GROUP BY and HAVING
* String functions
* Data cleaning techniques
* Window Functions

  * ROW_NUMBER()
  * RANK()
  * DENSE_RANK()
* Subqueries

---

## Key Analysis Questions 🔍

Some of the business questions solved in this project include:

1. Count the number of Movies vs TV Shows.
2. Find the most common rating for movies and TV shows.
3. Identify the top countries producing Netflix content.
4. Find the longest movie available on Netflix.
5. Determine the number of shows released each year.
6. Find the top directors with the most shows.
7. Identify the most common genres on Netflix.
8. Analyze content added to Netflix over time.
9. Find shows longer than 120 minutes.
10. Rank directors based on number of shows.
11. Find the top show for each release year.

---

## Example SQL Query 💻

```sql
SELECT director, COUNT(*) AS total_shows
FROM netflixdata
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_shows DESC
LIMIT 10;
```

This query identifies the **top 10 directors with the most shows on Netflix**.

---

## Key Insights 📊

* Movies make up the majority of Netflix content.
* Certain directors have contributed multiple shows to the platform.
* Content production increased significantly after 2015.
* A few countries dominate Netflix content production.
* TV-MA is one of the most common ratings on the platform.

---

## Project Structure 📁

```
Netflix-SQL-Project
│
├── NetflixData.csv
├── netflix_queries.sql
└── README.md
```



## Conclusion 🚀

This project demonstrates how **SQL can be used for real-world data analysis** by extracting meaningful insights from a large dataset. It showcases essential SQL skills required for **Data Analyst and Data Science roles**.


## Author 👨‍💻

**Shlok Gadhave**

If you found this project useful, feel free to ⭐ the repository!

