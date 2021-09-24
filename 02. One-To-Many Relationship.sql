--02. One-To-Many Relationship
CREATE TABLE Manufacturers
(
	ManufacturerID INT IDENTITY PRIMARY KEY,
	[Name] VARCHAR(30) NOT NULL,
	EstablishedOn DATETIME NOT NULL
)

SET IDENTITY_INSERT Manufacturers ON

INSERT INTO Manufacturers(ManufacturerID, Name, EstablishedOn) VALUES
	(1, 'BMW', '07/03/1916'),
	(2, 'Tesla', '01/01/2003'),
	(3, 'Lada', '01/05/1966')


CREATE TABLE Models
(
	ModelID INT PRIMARY KEY IDENTITY(101,1),
	[Name] VARCHAR(30) NOT NULL,
	ManufacturerID INT FOREIGN KEY REFERENCES Manufacturers(ManufacturerID)
)

SET IDENTITY_INSERT Manufacturers OFF
SET IDENTITY_INSERT Models ON

INSERT INTO Models(Name, ManufacturerID) VALUES
		  ('X1', 1),
		  ('i6', 1),
		  ('Model S', 2),
		  ('Model X', 2),
		  ('Model 3', 2),
		  ('Nova', 3)

SET IDENTITY_INSERT Models OFF