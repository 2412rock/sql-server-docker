
-- Create the UsersDB database
CREATE DATABASE DorelDB;
GO

-- Switch to the UsersDB database
USE DorelDB;
GO

-- Create a table in UsersDB
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50),
    Email NVARCHAR(255),
    Password NVARCHAR(255)
);
GO
CREATE TABLE Judete (
    JudetID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255),
);
GO
CREATE TABLE Servicii (
    ServiciuIdID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255),
);
GO
CREATE TABLE JunctionServicii (
    UserID INT,
    ServiciuIdID INT,
    PRIMARY KEY (UserID, ServiciuIdID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiciuIdID) REFERENCES Servicii(ServiciuIdID)
);
GO
CREATE TABLE JunctionJudete (
    UserID INT,
    JudetID INT,
    PRIMARY KEY (UserID, JudetID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (JudetID) REFERENCES Judete(JudetID)
);
GO

INSERT INTO Judete (Name)
VALUES ('Hunedoara'), ('Arad'), ('Timisoara'), ('Cluj'),('Bucuresti');
GO
INSERT INTO Servicii (Name)
VALUES ('Electrician'), ('Zugrav'), ('Menajera'), ('Instalator');
GO