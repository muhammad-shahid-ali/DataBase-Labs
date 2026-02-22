-- Lab 1: Analytical Queries
-- Author: Muhammad Shahid Ali

-- Query 1: Filter with WHERE
SELECT title, author, rating, category
FROM books_read
WHERE rating > 4.0
ORDER BY rating DESC;

-- Query 2: GROUP BY
SELECT category, AVG(pages) AS avg_pages, COUNT(*) AS book_count
FROM books_read
GROUP BY category;

-- Query 3: ORDER BY
SELECT title, pages
FROM books_read
ORDER BY pages DESC;

-- Query 4: Date function
SELECT title, TO_CHAR(date_finished, 'Month YYYY') AS month_finished
FROM books_read;

-- Query 5: Multi-condition
SELECT title, author, rating
FROM books_read
WHERE rating >= 4.5 AND category = 'Data Science'
OR category = 'Databases';
