IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DorelDB')
BEGIN
    CREATE DATABASE DorelDB;
END;

-- Switch to the newly created database
USE master;
GO
USE DorelDB;
-- Check if the Users table exists, if not, create it
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Users')
BEGIN
    CREATE TABLE Users (
        UserID INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(50),
        Email NVARCHAR(255),
        Password NVARCHAR(255)
    );
END;

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Messages')
BEGIN
    CREATE TABLE Messages (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        SenderId INT,
        ReceipientId INT,
        Message NVARCHAR(255),
        SentTime DATETIME
    );
END;

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'AccessLogs')
BEGIN
    CREATE TABLE AccessLogs (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        IpAddress NVARCHAR(255),
        AccessTime DATETIME
    );
END;

-- Check if the Judete table exists, if not, create it
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Judete')
BEGIN
    CREATE TABLE Judete (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(255)
    );
END;

-- Check if the Servicii table exists, if not, create it
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Servicii')
BEGIN
    CREATE TABLE Servicii (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(255)
    );
END;

-- Check if the JunctionServiciuJudete table exists, if not, create it
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'JunctionServiciuJudete')
BEGIN
    CREATE TABLE JunctionServiciuJudete (
        UserID INT,
        ServiciuIdID INT,
        JudetID INT,
        PRIMARY KEY (UserID, ServiciuIdID, JudetID),
        FOREIGN KEY (UserID) REFERENCES Users(UserID),
        FOREIGN KEY (ServiciuIdID) REFERENCES Servicii(ID),
        FOREIGN KEY (JudetID) REFERENCES Judete(ID),
        Descriere NVARCHAR(1024)
    );
END;


-- Add Rating column to JunctionServiciuJudete table if it doesn't exist
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'JunctionServiciuJudete' AND COLUMN_NAME = 'Rating')
BEGIN
    ALTER TABLE JunctionServiciuJudete
    ADD Rating DECIMAL(10, 2);
END;

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'JunctionServiciuJudete' AND COLUMN_NAME = 'Users')
BEGIN
    ALTER TABLE Users
    ADD IsAdmin BIT;
END;

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'JunctionServiciuJudete' AND COLUMN_NAME = 'Views')
BEGIN
    ALTER TABLE JunctionServiciuJudete
    ADD Views INT;
END;

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Messages' AND COLUMN_NAME = 'Seen')
BEGIN
    ALTER TABLE Messages
    ADD Seen BIT;
END;

-- Create the Reviews table if it does not exist
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Reviews')
BEGIN
    CREATE TABLE Reviews (
        ReviewID INT IDENTITY(1,1) PRIMARY KEY,
        ReviewerUserId INT,
        ReviewedUserId INT,
        ServiciuId INT,
        Rating DECIMAL(10, 2),
        ReviewDescription NVARCHAR(MAX),
        FOREIGN KEY (ReviewerUserId) REFERENCES Users(UserID),
        FOREIGN KEY (ReviewedUserId) REFERENCES Users(UserID),
        FOREIGN KEY (ServiciuId) REFERENCES Servicii(ID)
    );
END;
