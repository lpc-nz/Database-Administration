USE edoctor;
-- Insert to account
INSERT INTO Account
VALUES (1, "demo1", "demo123", "demo1@gmail.com"); -- Physician
INSERT INTO Account
VALUES (2, "demo2", "demo123", "demo2@gmail.com"); -- patient
INSERT INTO Account
VALUES (3, "demo3", "demo123", "demo3@gmail.com"); -- Physician
INSERT INTO Account
VALUES (4, "demo4", "demo123", "demo4@gmail.com"); -- Physician
INSERT INTO Account
VALUES (5, "demo5", "demo123", "demo5@gmail.com"); -- patient

-- insert to License
INSERT INTO License
VALUES (111, "This is Doctor 2, he is an Family Physicians", "Otago Degree about Family Physicians", "4 years working in Hospital");

INSERT INTO License
VALUES (222, "This is Doctor 3, he is an Dermatologists", "Otago Degree about Family Physicians", "3 years working in Hospital");

INSERT INTO License
VALUES (333, "This is Doctor 4, she is an Cardiologists", "Otago Degree about Family Physicians", "5 years working in Hospital");

-- insert to Physician

INSERT INTO Physician
VALUES(1, 1, "Wilman", "Matti", "111", "English");

INSERT INTO Physician
VALUES(2, 3, "Chung", "Lee", "222", "English, Vietnamese");

INSERT INTO Physician
VALUES(3, 4, "Wolski", "Zbyszek", "333", "English");

-- insert to Patient
INSERT INTO Patient
VALUES (11, 2, NULL, "Patient1", "Demo", 100, "Street 1", "CBD", "demo3@gmail.com" );
INSERT INTO Patient
VALUES (22, 5, NULL, "Patient02", "Demo02", 20, "Street 123", "Airport", "demo5@gmail.com" );

-- insert to Booking

INSERT INTO Bookings
VALUES (1, 2, 11, 1, "13:00", "2020-08-30");

INSERT INTO Bookings
VALUES (2, 5, 22, 3, "08:00", "2020-08-30");

-- insert Bills
INSERT INTO Bills
VALUES (1, 1, 20.36);

INSERT INTO Bills
VALUES (2, 2, 100.36);

-- insert Payment infor
INSERT INTO Payment
VALUES(2, 1, "123456789", "Demo ANZ", "456");
INSERT INTO Payment
VALUES(5, 2, "789456123", "Demo ASB", "654");

-- Insert Treat
INSERT INTO Treat
VALUES (1, 1, 11, "2020-08-30", "13:00", "Need take a break for a week");
INSERT INTO Treat
VALUES (2, 3, 22, "2020-08-30", "08:00", "recover in 02 days");

-- Insert Presciption

INSERT INTO Presciption
VALUES (1, 1, "Medicine 1, Medicine 2");
INSERT INTO Presciption
VALUES (2, 2, "No need");


