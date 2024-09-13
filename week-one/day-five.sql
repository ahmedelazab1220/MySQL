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