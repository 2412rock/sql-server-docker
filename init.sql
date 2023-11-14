
-- Create the UsersDB database
CREATE DATABASE UsersDB;
GO

-- Switch to the UsersDB database
USE UsersDB;
GO

-- Create a table in UsersDB
CREATE TABLE Users (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50),
    Email NVARCHAR(255),
    Password NVARCHAR(255)
);
GO