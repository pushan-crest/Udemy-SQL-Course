-- PRINTING THE TOTAL NUMBER OF BOOKS IN  THE DATASET
SELECT COUNT(*)
FROM books;

-- NUMBER OF BOOKS RELEASED IN EACH YEAR
SELECT RELEASED_YEAR, COUNT(*)
FROM books
GROUP BY RELEASED_YEAR;

-- TOTAL NUMBER OF BOOKS IN STOCK
SELECT SUM(STOCK_QUANTITY)
FROM books;

-- AVERAGE RELEASED YEAR OF EACH AUTHOR
SELECT CONCAT(AUTHOR_FNAME, ' ', AUTHOR_LNAME) AS NAME, AVG(RELEASED_YEAR)
FROM books
GROUP BY NAME;

-- FIND THE FULL NAME OF THE AUTHOR WHO WROTE THE LONGEST BOOK
SELECT CONCAT(AUTHOR_FNAME, ' ', AUTHOR_LNAME) AS NAME
FROM books
WHERE PAGES = (
SELECT MAX(PAGES)
FROM books);


-- MAKE A TABLE OF RELEASE YEAR, TOTAL NUMBER OF BOOKS RELEASED IN THAT YEAR AND THE AVG NUMBER OF PAGES IN ALL BOOKS RELEASED THAT YEAR
SELECT RELEASED_YEAR AS YEAR, COUNT(*) AS books, AVG(PAGES)
FROM books
GROUP BY RELEASED_YEAR
ORDER BY 1;