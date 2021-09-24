--06. University Database
CREATE TABLE Majors
(
	MajorID INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE Students
(
	StudentID INT PRIMARY KEY IDENTITY,
	StudentNumber VARCHAR(15) NOT NULL,
	StudentName VARCHAR(50) NOT NULL,
	MajorID INT FOREIGN KEY REFERENCES Majors(MajorID)
)

CREATE TABLE Payments
(
	PaymentID INT PRIMARY KEY IDENTITY,
	PaymentDate DATE NOT NULL,
	PaymentAmount INT NOT NULL,
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID)
)

CREATE TABLE Subjects
(
	SubjectID INT PRIMARY KEY IDENTITY,
	SubjectName VARCHAR(50) NOT NULL
)

CREATE TABLE Agenda
(
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
	SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID)

	CONSTRAINT PK_StudentID_SubjectID PRIMARY KEY (StudentID, SubjectID)
)