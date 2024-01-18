--This SQL script creates a table called 'users' following these requirements:
--
--id, integer, never null, auto increment and primary key
--email, string (255 characters), never null and unique
--name, string (255 characters)
--If the table already exists, your script should not fail
--Your script can be executed on any database 





Creates a table users with below attributes
-- id: should be an integer, never null, auto increment and primary key
-- email should be a string (255 characters), never null and unique
-- name should be a string (255 characters)
-- If table exists, script will not fail, and can be executed on any database

CREATE TABLE IF NOT EXISTS users (
       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       email VARCHAR(255) NOT NULL UNIQUE,
       name VARCHAR(255)
);
