-- BETWEEN KEYWORD
-- The BETWEEN operator is inclusive: begin and end values are included.  	

-- SELECT BOOKS HAVING PAGES BETWEEN 200 AND 500
SELECT TITLE, PAGES FROM BOOKS WHERE PAGES BETWEEN 200 AND 500;

-- SIMILARLY WE HAVE NOT BETWEEN
SELECT TITLE, PAGES FROM BOOKS WHERE PAGES NOT BETWEEN 200 AND 500;