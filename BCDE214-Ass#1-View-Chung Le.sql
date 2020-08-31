USE Edoctor;

-- Create Booking View
CREATE	VIEW Booking AS
SELECT b.bookingID, pt.fName, pt.lName, b.date, b.time
FROM Account a
INNER JOIN Patient pt
ON a.accountID = pt.accountID
INNER JOIN Bookings b
ON b.accountID = a.accountID;

-- Create Doctor List
CREATE VIEW Doctor AS
SELECT ps.physicianID, ps.fName, ps.lName, ps.language, l.about, l.experience
FROM physician ps
INNER JOIN license l
ON ps.licenseID = l.licenseID;

-- Create Bills view

CREATE VIEW Bill AS
SELECT b.bookingID, pt.fName, pt.lName, bl.total
FROM Account a
INNER JOIN Patient pt
ON a.accountID = pt.accountID
INNER JOIN Bookings b
ON b.accountID = a.accountID
INNER JOIN Bills bl
ON b.bookingID = bl.bookingID;

-- Test View

SELECT * FROM booking;
SELECT * FROM bill;