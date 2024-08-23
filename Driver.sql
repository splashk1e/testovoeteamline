--№1
CREATE TABLE Drivers (
    Id INT PRIMARY KEY IDENTITY(1,1),           
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE ,
    LicenseNumber NVARCHAR(20) UNIQUE 
);
--№2
CREATE PROCEDURE InsertDriver
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @DateOfBirth DATE
AS
BEGIN
    INSERT INTO Drivers (FirstName, LastName, DateOfBirth)
    VALUES (@FirstName, @LastName, @DateOfBirth);
END;
--№3
CREATE FUNCTION GetLicenseNumber
    (@FirstName NVARCHAR(50), @LastName NVARCHAR(50))
RETURNS NVARCHAR(20)
AS
BEGIN
    DECLARE @LicenseNumber NVARCHAR(20);

    SELECT @LicenseNumber = LicenseNumber
    FROM Drivers
    WHERE FirstName = @FirstName AND LastName = @LastName;

    RETURN @LicenseNumber;
END;
--№4
SELECT *
FROM Drivers
WHERE FirstName = 'Михаил';
--№5
SELECT YEAR(DateOfBirth) AS BirthYear, COUNT(*) AS DriverCount
FROM Drivers
GROUP BY YEAR(DateOfBirth)
ORDER BY BirthYear;
    

