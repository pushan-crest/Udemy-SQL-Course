-- LIKE OPERATOR 
-- IT IS USED WITH WHERE CLAUSE
-- LIKE IS USED TO PROVIDE FUZZY SEARCHING CAPAPBILITIES WHERE WE CAN USE IT TO GIVE SPECIFIC CHARACTER SEARCHING
SELECT * FROM BOOKS;

-- % REPRESENTS 0 OR SOME TEXT
-- D% REPRESENTS D THEN SOME TEXT
-- RETURNS ALL AUTHOR_LNAME STARTING WITH LETTER D
SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE AUTHOR_FNAME LIKE 'd%';

SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE AUTHOR_FNAME LIKE '%d%';

-- TITLE CONTAINING :
SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE TITLE LIKE '%:%';

-- -----------------------------------------------------------------------

-- SIMILARLY THERE IS _ WHICH MEANS EXACTLY ONE CHARACTER

-- SELECT ALL BOOKS WITH AUTHOR_FNAME OF EXACTLY 4 CHARACTERS
SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE AUTHOR_FNAME LIKE '____';

-- -----------------------------------------------------------------------

-- SELECTING FIELDS WITH % IN IT - WE USE ESCAPE SEQUENCE
SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE TITLE LIKE '%\%%';

-- SIMILARLY CAN BE USED WITH UNDERSCORE
SELECT TITLE, AUTHOR_FNAME FROM BOOKS WHERE TITLE LIKE '%\_%';

