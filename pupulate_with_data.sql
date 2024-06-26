USE DorelDB;

-- Insert data into Judete table if they don't already exist
INSERT INTO Judete (Name)
SELECT 'Hunedoara' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Hunedoara')
UNION ALL
SELECT 'Arad' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Arad')
UNION ALL
SELECT 'Cluj' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Cluj')
UNION ALL
SELECT 'Bucuresti' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Bucuresti')
UNION ALL
SELECT 'Alba' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Alba')
UNION ALL
SELECT 'Arges' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Arges')
UNION ALL
SELECT 'Bihor' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Bihor')
UNION ALL
SELECT 'Bistrita-Nasaud' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Bistrita-Nasaud')
UNION ALL
SELECT 'Botosani' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Botosani')
UNION ALL
SELECT 'Brasov' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Brasov')
UNION ALL
SELECT 'Braila' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Braila')
UNION ALL
SELECT 'Buzau' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Buzau')
UNION ALL
SELECT 'Caras-Severin' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Caras-Severin')
UNION ALL
SELECT 'Calarasi' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Calarasi')
UNION ALL
SELECT 'Constanta' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Constanta')
UNION ALL
SELECT 'Covasna' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Covasna')
UNION ALL
SELECT 'Dambovita' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Dambovita')
UNION ALL
SELECT 'Dolj' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Dolj')
UNION ALL
SELECT 'Galati' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Galati')
UNION ALL
SELECT 'Giurgiu' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Giurgiu')
UNION ALL
SELECT 'Gorj' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Gorj')
UNION ALL
SELECT 'Harghita' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Harghita')
UNION ALL
SELECT 'Ialomita' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Ialomita')
UNION ALL
SELECT 'Iasi' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Iasi')
UNION ALL
SELECT 'Ilfov' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Ilfov')
UNION ALL
SELECT 'Maramures' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Maramures')
UNION ALL
SELECT 'Mehedinti' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Mehedinti')
UNION ALL
SELECT 'Mures' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Mures')
UNION ALL
SELECT 'Neamt' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Neamt')
UNION ALL
SELECT 'Olt' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Olt')
UNION ALL
SELECT 'Prahova' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Prahova')
UNION ALL
SELECT 'Satu Mare' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Satu Mare')
UNION ALL
SELECT 'Salaj' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Salaj')
UNION ALL
SELECT 'Sibiu' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Sibiu')
UNION ALL
SELECT 'Suceava' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Suceava')
UNION ALL
SELECT 'Teleorman' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Teleorman')
UNION ALL
SELECT 'Timis' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Timis')
UNION ALL
SELECT 'Tulcea' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Tulcea')
UNION ALL
SELECT 'Vaslui' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Vaslui')
UNION ALL
SELECT 'Valcea' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Valcea')
UNION ALL
SELECT 'Vrancea' WHERE NOT EXISTS (SELECT 1 FROM Judete WHERE Name = 'Vrancea');


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

IF EXISTS (SELECT 1 FROM Users WHERE Email = '2412rock@gmail.com')
BEGIN
    UPDATE Users
    SET IsAdmin = 1
    WHERE Email = '2412rock@gmail.com';
END;

IF EXISTS (SELECT 1 FROM Users WHERE Email = 'adi.albu10@yahoo.com')
BEGIN
    UPDATE Users
    SET IsAdmin = 1
    WHERE Email = 'adi.albu10@yahoo.com';
END;

-- Set default value to 1 if the existing value is NULL
UPDATE JunctionServiciuJudete 
SET Ofer = 1 
WHERE Ofer IS NULL;