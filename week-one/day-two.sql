-- TO DROP DATABASE
DROP DATABASE IF EXISTS database_name;

-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS database_name;

-- TO USE DATABASE
USE database_name;

-- CREATE TABLE IN DATABASE
CREATE TABLE IF NOT EXISTS table_name
(
    column_name1 data_type,
    column_name2 data_type
);


-- data_type In MySQL 

-- 1. Numeric Data Types
--- TINYINT: A very small integer.
  -- Range:
  -- Signed: -128 to 127
  -- Unsigned: 0 to 255
  
--- SMALLINT: A small integer.
   -- Range:
   -- Signed: -32,768 to 32,767
   -- Unsigned: 0 to 65,535

--- MEDIUMINT: A medium-sized integer.
   -- Range:
   -- Signed: -8,388,608 to 8,388,607
   -- Unsigned: 0 to 16,777,215

--- INT: A standard integer.
   -- Range:
   -- Signed: -2,147,483,648 to 2,147,483,647
   -- Unsigned: 0 to 4,294,967,295

--- BIGINT: A large integer.
   -- Range:
   -- Signed: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
   -- Unsigned: 0 to 18,446,744,073,709,551,615

--- FLOAT: Single-precision floating-point number.
   -- Precision: Up to 24 significant digits

--- DOUBLE: Double-precision floating-point number.
   -- Precision: Up to 53 significant digits

--- DECIMAL: Exact numeric data type with fixed precision and scale.
   -- Syntax: DECIMAL(M, D) where M is the total number of digits and D is the number of digits after the decimal point.
   -- Example: DECIMAL(5, 2) can store values from -999.99 to 999.99.

-- 2. Date and Time Data Types
--- DATE: Date in the format 'YYYY-MM-DD'.
   -- Range: 1000-01-01 to 9999-12-31

--- DATETIME: Date and time in the format 'YYYY-MM-DD HH:MM:SS'.
   -- Range: 1000-01-01 00:00:00 to 9999-12-31 23:59:59

--- TIMESTAMP: Timestamp in the format 'YYYY-MM-DD HH:MM:SS'.
   -- Range: 1970-01-01 00:00:01 to 2038-01-19 03:14:07 (for 32-bit systems) or beyond for 64-bit systems.

   -- Note: TIMESTAMP values are stored in UTC and converted to the session time zone.

--- TIME: Time in the format 'HH:MM:SS'.
   -- Range: -838:59:59 to 838:59:59

--- YEAR: Year in the format 'YYYY'.
   -- Range: 1901 to 2155