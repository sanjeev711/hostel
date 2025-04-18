CREATE DATABASE HostelManagement;
USE HostelManagement;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(15)
);

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(20),
    Capacity INT,
    Occupied INT
);

CREATE TABLE Wardens (
    WardenID INT PRIMARY KEY,
    WardenName VARCHAR(50),
    Contact VARCHAR(15)
);

CREATE TABLE StudentRoom (
    StudentID INT,
    RoomID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
    PRIMARY KEY (StudentID, RoomID)
);

CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    StudentID INT,
    Amount DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE Complaints (
    ComplaintID INT PRIMARY KEY,
    StudentID INT,
    Description TEXT,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students VALUES 
(1, 'Aman', 19, 'Male', '9876543210'),
(2, 'Sneha', 20, 'Female', '9823456789'),
(3, 'Ravi', 21, 'Male', '9812345678'),
(4, 'Kiran', 22, 'Female', '9845671234'),
(5, 'Aditya', 19, 'Male', '9876543211'),
(6, 'Pooja', 20, 'Female', '9834567890'),
(7, 'Rahul', 21, 'Male', '9811223344'),
(8, 'Simran', 22, 'Female', '9800112233'),
(9, 'Vikram', 20, 'Male', '9876611223'),
(10, 'Neha', 21, 'Female', '9822334455');

INSERT INTO Rooms VALUES
(101, 'Single', 1, 1),
(102, 'Double', 2, 2),
(103, 'Triple', 3, 2),
(104, 'Single', 1, 1),
(105, 'Double', 2, 1),
(106, 'Single', 1, 1),
(107, 'Double', 2, 2),
(108, 'Triple', 3, 3),
(109, 'Single', 1, 0),
(110, 'Double', 2, 0);

INSERT INTO Wardens VALUES
(1, 'Mr. Sharma', '9990011223'),
(2, 'Mrs. Patel', '9990022334'),
(3, 'Mr. Verma', '9990033445'),
(4, 'Ms. Joshi', '9990044556'),
(5, 'Mr. Khan', '9990055667'),
(6, 'Mrs. Rao', '9990066778'),
(7, 'Mr. Reddy', '9990077889'),
(8, 'Ms. Das', '9990088990'),
(9, 'Mr. Singh', '9990099001'),
(10, 'Mrs. Iyer', '9990101011');

INSERT INTO StudentRoom VALUES 
(1, 101), 
(2, 102), 
(3, 102), 
(4, 103), 
(5, 103), 
(6, 104), 
(7, 105), 
(8, 106), 
(9, 107), 
(10, 108);

INSERT INTO Fees VALUES
(1, 1, 10000, 'Paid'),
(2, 2, 9500, 'Unpaid'),
(3, 3, 10500, 'Paid'),
(4, 4, 10000, 'Paid'),
(5, 5, 9800, 'Unpaid'),
(6, 6, 11000, 'Paid'),
(7, 7, 10000, 'Paid'),
(8, 8, 10200, 'Unpaid'),
(9, 9, 9700, 'Paid'),
(10, 10, 10100, 'Paid');

INSERT INTO Complaints VALUES
(1, 1, 'Leaky tap in bathroom', 'Resolved'),
(2, 2, 'Broken fan', 'Pending'),
(3, 3, 'No water supply', 'Resolved'),
(4, 4, 'Dirty room', 'Pending'),
(5, 5, 'Wi-Fi not working', 'Pending'),
(6, 6, 'Electric socket issue', 'Resolved'),
(7, 7, 'AC not cooling', 'Pending'),
(8, 8, 'Mosquitoes in room', 'Resolved'),
(9, 9, 'Door lock broken', 'Pending'),
(10, 10, 'No electricity', 'Resolved');

SELECT * FROM Students;

SELECT * FROM Students WHERE Gender = 'Female';

SELECT * FROM Students WHERE Age > 20;

SELECT * FROM Rooms WHERE Capacity > 2;

SELECT * FROM Fees WHERE Status = 'Unpaid';

SELECT s.Name, r.RoomType 
FROM Students s
JOIN StudentRoom sr ON s.StudentID = sr.StudentID
JOIN Rooms r ON sr.RoomID = r.RoomID;

SELECT s.Name, f.Amount, f.Status 
FROM Students s
JOIN Fees f ON s.StudentID = f.StudentID;

SELECT s.Name, c.Description, c.Status 
FROM Students s
JOIN Complaints c ON s.StudentID = c.StudentID;

SELECT COUNT(*) FROM Students;

SELECT AVG(Amount) AS Avg_Fee FROM Fees;

SELECT COUNT(*) FROM Complaints WHERE Status = 'Pending';

SELECT SUM(Occupied) AS Total_Occupied FROM Rooms;

SELECT Status, COUNT(*) FROM Complaints GROUP BY Status;

SELECT Status, COUNT(*) FROM Fees GROUP BY Status;

SELECT Name FROM Students
WHERE StudentID IN (
  SELECT StudentID FROM Fees WHERE Amount > (SELECT AVG(Amount) FROM Fees)
);

SELECT * FROM Rooms WHERE Capacity > Occupied;

SELECT s.Name, f.Amount 
FROM Fees f 
JOIN Students s ON s.StudentID = f.StudentID 
ORDER BY f.Amount DESC LIMIT 5;

SELECT * FROM Complaints ORDER BY ComplaintID DESC LIMIT 3;

SELECT StudentID, RoomID FROM StudentRoom;

SELECT s.Name, f.Status FROM Students s
LEFT JOIN Fees f ON s.StudentID = f.StudentID;