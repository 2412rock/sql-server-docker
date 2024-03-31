USE DorelDB;

-- Insert data into Judete table if they don't already exist
INSERT INTO Judete (Name)
SELECT 'Hunedoara' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Hunedoara')
UNION ALL
SELECT 'Arad' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Arad')
UNION ALL
SELECT 'Timisoara' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Timisoara')
UNION ALL
SELECT 'Cluj' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Cluj')
UNION ALL
SELECT 'Bucuresti' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Bucuresti');

-- Insert data into Servicii table if they don't already exist
INSERT INTO Servicii (Name)
SELECT 'Electrician' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Electrician')
UNION ALL
SELECT 'Zugrav' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Zugrav')
UNION ALL
SELECT 'Menajera' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Menajera')
UNION ALL
SELECT 'Instalator' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Instalator')
UNION ALL
SELECT 'Sudor' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Sudor')
UNION ALL
SELECT 'Tamplar' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Tamplar')
UNION ALL
SELECT 'Mecanic' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Mecanic')
UNION ALL
SELECT 'Zidar' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Zidar')
UNION ALL
SELECT 'Operator de echipamente grele' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Operator de echipamente grele')
UNION ALL
SELECT 'Lacatus' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Lacatus')
UNION ALL
SELECT 'Tencuitor' WHERE NOT EXISTS (SELECT 1 FROM Servicii WHERE Name = 'Tencuitor');
