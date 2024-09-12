-- TO Create DATABASE
CREATE DATABASE IF NOT EXISTS database_name;

-- TO DROP DATABASE
DROP DATABASE IF EXISTS database_name;

-- TO USE DATABASE
USE database_name;

-- CREATE USER IN DATABASE
CREATE USER 'my_user'@'localhost' IDENTIFIED BY 'password';

-- GRANT All PRIVILEGES ON All Database 
GRANT ALL PRIVILEGES ON *.* TO 'my_user'@'localhost' WITH GRANT OPTION;

-- FLUSH PRIVILEGES , used to update MySQL with the latest changes made to user permissions without needing to restart the MySQL server.
FLUSH PRIVILEGES;

-- SHOW GRANTS FOR USER
SHOW GRANTS FOR 'my_user'@'localhost';

-- REVOKE GRANT OPTION FOR USER
REVOKE GRANT OPTION ON *.* FROM 'my_user'@'localhost';

-- Revoke All Privileges ON All Databases
REVOKE ALL PRIVILEGES ON *.* FROM 'my_user'@'localhost';

-- REVOKE INSERT, UPDATE ON my_database.* FROM USER
REVOKE INSERT, UPDATE ON my_database.* FROM 'my_user'@'localhost';

-- Revoke SELECT privilege on a specific table
REVOKE SELECT ON my_database.my_table FROM 'my_user'@'localhost';

--- This All Are Privileges

-- SELECT: Allows reading data from a table.
-- INSERT: Allows inserting new rows into a table.
-- UPDATE: Allows modifying existing rows in a table.
-- DELETE: Allows deleting rows from a table.
-- CREATE: Allows creating new tables and databases.
-- DROP: Allows deleting tables or databases.
-- ALTER: Allows modifying the structure of tables (e.g., adding or dropping columns).
-- INDEX: Allows creating and dropping indexes.
-- REFERENCES: Allows creating foreign keys (though it's mostly unused).
-- EXECUTE: Allows executing stored procedures and functions.
-- SHOW VIEW: Allows viewing the definition of views.
-- CREATE VIEW: Allows creating views.
-- EVENT: Allows creating, altering, and dropping events.
-- TRIGGER: Allows creating, altering, and dropping triggers.
-- CREATE ROUTINE: Allows creating stored procedures and functions.
-- ALTER ROUTINE: Allows altering or dropping stored procedures and functions.
-- GRANT OPTION: Allows granting privileges to other users.
-- RELOAD: Allows reloading certain internal caches (e.g., for FLUSH commands).
-- SHUTDOWN: Allows shutting down the MySQL server.
-- SUPER: Grants all administrative privileges (like changing server variables and killing processes).
-- PROCESS: Allows viewing information about running processes.
-- BACKUP: Allows performing database backups (specific to some MySQL versions and third-party tools).
-- FILE: Allows reading and writing files on the server.
-- SHOW DATABASES: Allows listing all databases.
-- REPLICATION CLIENT: Allows querying the replication status.
-- REPLICATION SLAVE: Allows the server to act as a replication slave.
