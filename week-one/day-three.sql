-- to modify table and add column
ALTER TABLE table_name ADD column_name datatype;

-- to modify table and drop column
ALTER TABLE table_name DROP column_name

-- to modify table and rename column
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name

-- to modify table and modify column
ALTER TABLE table_name MODIFY column_name datatype

-- to modify table and rename table
ALTER TABLE table_name RENAME TO new_table_name

-- to modify table and drop table
DROP TABLE table_name

-- to modify table and add primary key
ALTER TABLE table_name ADD PRIMARY KEY (column_name)

-- to modify table and drop primary keys
ALTER TABLE table_name DROP PRIMARY KEY

-- to modify table and add foreign key
ALTER TABLE table_name ADD FOREIGN KEY (column_name) REFERENCES table_name(column_name)

-- to modify table and drop foreign key
ALTER TABLE table_name DROP FOREIGN KEY column_name

-- to modify table and add unique key
ALTER TABLE table_name ADD UNIQUE KEY (column_name)

-- to modify table and drop unique key
ALTER TABLE table_name DROP UNIQUE KEY column_name

-- to modify table and add check constraint
ALTER TABLE table_name ADD CHECK (column_name = 'value')

-- to modify table and drop check constraint
ALTER TABLE table_name DROP CHECK column_name

-- to modify table and add default constraint
ALTER TABLE table_name ADD DEFAULT 'value' FOR column_name

-- to modify table and drop default constraint
ALTER TABLE table_name DROP DEFAULT

-- to modify table and add index
ALTER TABLE table_name ADD INDEX (column_name)

-- to modify table and drop index
ALTER TABLE table_name DROP INDEX column_name

-- to modify table and add unique index
ALTER TABLE table_name ADD UNIQUE INDEX (column_name)

-- to modify table and drop unique index
ALTER TABLE table_name DROP UNIQUE INDEX column_name

-- to modify table and add fulltext index
ALTER TABLE table_name ADD FULLTEXT INDEX (column_name)

-- to modify table and drop fulltext index
ALTER TABLE table_name DROP FULLTEXT INDEX column_name

-- to modify table and add spatial index
ALTER TABLE table_name ADD SPATIAL INDEX (column_name)

-- to modify table and drop spatial index
ALTER TABLE table_name DROP SPATIAL INDEX column_name

-- to modify database and rename name
ALTER DATABASE database_name RENAME TO new_database_name

-- to delete all rows in table 
TRUNCATE TABLE table_name

-- Notes
--- TRUNCATE is used for quickly emptying a table but has restrictions compared to DELETE. It is faster and resets the auto-increment counter but
--- cannot be used with foreign key constraints, cannot include conditions, and cannot be used with tables that have triggers or certain constraints.

-- to use truncate with foreign key
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE table_name;
SET FOREIGN_KEY_CHECKS = 1;

-- Truncate Multiple Tables
TRUNCATE TABLE table1, table2

