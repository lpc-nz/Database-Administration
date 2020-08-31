USE Edoctor;

-- Select Patients details
SELECT patientID, fName, fName, streetNum, streetName, email
FROM Patient;

-- Select Physician details
SELECT physicianID, fName, lName, language
FROM physician;

-- Select Physician specialist
SELECT ps.physicianID, ps.fName, ps.lName, ps.language, l.about, l.experience
FROM physician ps
INNER JOIN license l
ON ps.licenseID = l.licenseID;


-- SELECT Booking Details

SELECT b.bookingID, pt.fName, pt.lName, b.date, b.time
FROM Account a
INNER JOIN Patient pt
ON a.accountID = pt.accountID
INNER JOIN Bookings b
ON b.accountID = a.accountID;

-- Select patient and total they have to pay.
SELECT b.bookingID, pt.fName, pt.lName, bl.total
FROM Account a
INNER JOIN Patient pt
ON a.accountID = pt.accountID
INNER JOIN Bookings b
ON b.accountID = a.accountID
INNER JOIN Bills bl
ON b.bookingID = bl.bookingID;


-- Select patients have bill > 100$
SELECT b.bookingID, pt.fName, pt.lName, bl.total
FROM Account a
INNER JOIN Patient pt
ON a.accountID = pt.accountID
INNER JOIN Bookings b
ON b.accountID = a.accountID
INNER JOIN Bills bl
ON b.bookingID = bl.bookingID
WHERE bl.total > 100;
