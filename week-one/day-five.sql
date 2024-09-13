-- To Select all rows in table
SELECT * FROM table_name

-- To Select all rows in table where condition
SELECT * FROM table_name WHERE condition

-- To Select row from table with largest length value on column
SELECT column_name FROM table_name ORDER BY LENGTH(column_name) DESC LIMIT 1

-- To Select row from table with smallest length value on column
SELECT column_name FROM table_name ORDER BY LENGTH(column_name) ASC LIMIT 1

-- To Select row from table with largest value on column
SELECT column_name FROM table_name ORDER BY column_name DESC LIMIT 1

-- To Select row from table with smallest value on column
SELECT column_name FROM table_name ORDER BY column_name ASC LIMIT 1

-- To Select all rows from table with largest length value on column and order by alphabetically
SELECT * FROM table_name WHERE LENGTH(column_name) = (SELECT MAX(LENGTH(column_name)) FROM table_name) ORDER BY column_name

-- To Select row from table with largest length value on column and order by alphabetically
SELECT * FROM table_name WHERE LENGTH(column_name) = (SELECT MAX(LENGTH(column_name)) FROM table_name) ORDER BY column_name LIMIT 1

-- To Select all rows from table where first_condition AND second_condition
SELECT * FROM table_name WHERE first_condition AND second_condition;

-- To Select all rows from table where first_condition OR second_condition
SELECT * FROM table_name WHERE first_condition OR second_condition;

-- To Select all rows from table where NOT condition
SELECT * FROM table_name WHERE NOT condition;

-- To Select all rows where column_name LIKE 'pattern%'(Start With pattern)
SELECT * FROM table_name WHERE column_name LIKE 'pattern%';

-- To Select all rows where column_name LIKE 'J_n' (Start With J and End With n and between J and n exctally one single character Like Jon , Jan , Jen etc..)
SELECT * FROM table_name WHERE column_name LIKE 'J_n'

-- To Select names that start with 'J' followed by one or more letters
SELECT * FROM employees WHERE name REGEXP '^J[a-zA-Z]+';

-- To Select names that start with pattern and _ matches a single character
SELECT * FROM table_name WHERE column_name LIKE 'pattern_';

-- To Select names Where the Second Character Is pattern
SELECT * FROM table_name WHERE column_name LIKE '_pattern%';

-- To Select name where ending with any single character
Select * FROM table_name WHERE column_name LIKE '%_';

-- To Select all rows where column_name match the end of a string
SELECT * FROM table_name WHERE column_name REGEXP 'pattern$';

-- To Select all rows where column_name match the beginning of a string
SELECT * FROM table_name WHERE column_name REGEXP '^pattern';

-- To Select all rows where column_name match any character in a set
SELECT * FROM table_name WHERE column_name REGEXP 'p[aeiou]ttern';

-- To Select all rows where column_name not match any character in a set
SELECT * FROM table_name WHERE column_name REGEXP 'p[^aeiou]ttern';

-- To Select all rows where column_name match zero or one occurrence
SELECT * FROM table_name WHERE column_name REGEXP 'pattern?';

-- To Select all rows where column_name match zero or more occurrences
SELECT * FROM table_name WHERE column_name REGEXP 'pattern*';

-- To Select all rows where column_name match one or more occurrences
SELECT * FROM table_name WHERE column_name REGEXP 'pattern+';

-- To Select all rows where column_name start with any character in a range
SELECT * FROM table_name WHERE column_name REGEXP '[aeiouAEIOU]$';

-- To Select all rows where column_name end with any character in a range
SELECT * FROM table_name WHERE column_name REGEXP '^[aeiouAEIOU]';

-- To Select all rows where column_name start and end with any character in a range
SELECT column_name FROM table_name WHERE column_name REGEXP '^[aeiou].*[aeiou]$'


-- To Select all rows ordered by column_name in position pos1, pos2, pos3 in ascending order then by ID in ascending order
SELECT column_name FROM table_name ORDER BY SUBSTRING(NAME, pos1, 1),  -- Replace pos1 with the position of the first character to sort by
SUBSTRING(NAME, pos2, 1),  -- Replace pos2 with the position of the second character to sort by
SUBSTRING(NAME, pos3, 1),  -- Continue as needed
ID ASC;            

-- To Select all rows ordered by column_name in last 3 characters in ascending order then by ID in ascending order
SELECT column_name FROM table_name ORDER BY RIGHT(column_name, 3), ID ASC;


