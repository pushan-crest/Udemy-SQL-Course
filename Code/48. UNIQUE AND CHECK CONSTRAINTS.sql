-- UNIQUE CONSTRAINT
-- CHECK CONSTRAINT

-- ------------------------------------------------------------

CREATE TABLE NEW_BOOKS(
	TITLE VARCHAR(20) UNIQUE,
	RELEASED_YEAR INT CHECK(RELEASED_YEAR > 2000)	
);

DESC NEW_BOOKS;

INSERT INTO NEW_BOOKS(TITLE, RELEASED_YEAR) VALUES ('HELLOO', 1999);

-- ------------------------------------------------------------

CREATE TABLE PALINDROME(
	ISPALINDROME VARCHAR(20) CHECK(ISPALINDROME = REVERSE(ISPALINDROME))
);

INSERT INTO PALINDROME(ISPALINDROME) VALUES('RACECAR');

SELECT * FROM PALINDROME;

-- ------------------------------------------------------------

-- WE CAN ALSO ADD CHECK CONSTRAINT AT THE END OF TABLE SCHEMA
-- HERE WE CAN ADD A NAME TO THE CHECK CONSTRAINT 
CREATE TABLE PALINDROME2(
	ISPALINDROME VARCHAR(20),
	CONSTRAINT ISPALINDROME_VALID CHECK(ISPALINDROME = REVERSE(ISPALINDROME))
);

-- ------------------------------------------------------------

-- MULTI COLUMN CONSTRAINTS
CREATE TABLE companies (
supplier_id INT AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE,
address VARCHAR(255) NOT NULL, PRIMARY KEY (supplier_id), CONSTRAINT name_address UNIQUE (NAME, address)
);

DESC COMPANIES;