-- To Delete all rows in table
DELETE FROM table_name

-- To Delete all rows in table where condition
DELETE FROM table_name WHERE condition

-- To Delete the row with the alphabetically first value in column
DELETE FROM table_name WHERE column_name = (SELECT column_name FROM table_name ORDER BY column_name ASC LIMIT 1);

-- To Delete the row with the longest length in column
DELETE FROM table_name WHERE LENGTH(column_name) = (SELECT LENGTH(column_name) FROM table_name ORDER BY LENGTH(column_name) DESC LIMIT 1);

-- To Delete row from table with largest length value on column and order by alphabetically
DELETE FROM table_name WHERE LENGTH(column_name) = (SELECT MAX(LENGTH(column_name)) FROM table_name) ORDER BY column_name LIMIT 1

-- To Delete all rows from table with largest length value on column
DELETE FROM table_name WHERE LENGTH(column_name) = (SELECT MAX(LENGTH(column_name)) FROM table_name)

-- To Delete the row with the alphabetically last value in column
DELETE FROM table_name WHERE column_name = (SELECT column_name FROM table_name ORDER BY column_name DESC LIMIT 1);

-- To Delete all rows where first_condition AND second_condition
DELETE FROM table_name WHERE first_condition AND second_condition

-- To Delete all rows where first_condition OR second_condition
DELETE FROM table_name WHERE first_condition OR second_condition

-- To Delete all rows where NOT condition
DELETE FROM table_name WHERE NOT condition

-- Notes
  --- TRUNCATE is used for quickly emptying a table but has restrictions compared to DELETE.
  --- Verify Conditions: Before executing the DELETE statements, you might want to run SELECT queries with the same conditions to verify the rows that will be affected.
  --- Backup Data: Always make sure to backup your data or test the DELETE statements in a staging environment before applying them to production data.
  --- Transaction Control: Consider using transactions for safety if you are working with a large dataset or critical data:
      /* 
        BEGIN TRANSACTION; 
        DELETE FROM table_name WHERE first_condition AND second_condition; 
        COMMIT;
      */
  --- You can use ROLLBACK if you need to undo changes in case of errors.