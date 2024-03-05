USE projects;

SELECT * FROM hr;

-- ----------------DATA CLEANING---------------------

-- Renaming id column 

ALTER TABLE hr
CHANGE COLUMN ď»żid emp_id VARCHAR(20) NULL;

-- Checking hr table structure

DESCRIBE hr;

-- Formating dates

SET sql_safe_updates = 0;

-- Converting data in different date formats to one (YYYY-MM-DD)

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;


UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

UPDATE hr
SET termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate != '';

SELECT termdate FROM hr;

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

-- Adding new table storing age 

ALTER TABLE hr 
ADD COLUMN age INT;

-- Calculating the age by taking the difference in years between the 'birthdate' column and the current date

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());

SELECT
	MIN(age) AS youngest,
    MAX(age) AS oldest
FROM hr;

SELECT count(*) 
FROM hr 
WHERE age < 18;


