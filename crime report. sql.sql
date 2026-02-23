CREATE DATABASE crime_report_db;
USE crime_report_db;
CREATE TABLE Crime (
    crime_id INT PRIMARY KEY AUTO_INCREMENT,
    crime_type VARCHAR(100) NOT NULL,
    crime_date DATE NOT NULL,
    location VARCHAR(150) NOT NULL
);
CREATE TABLE Police_Officer (
    officer_id INT PRIMARY KEY AUTO_INCREMENT,
    officer_name VARCHAR(100) NOT NULL,
    Ranks VARCHAR(50),
    station VARCHAR(100)
);
CREATE TABLE Victim (
    victim_id INT PRIMARY KEY AUTO_INCREMENT,
    victim_name VARCHAR(100) NOT NULL,
    contact VARCHAR(15),
    address VARCHAR(200)
);
CREATE TABLE FIR (
    fir_id INT PRIMARY KEY AUTO_INCREMENT,
    crime_id INT,
    criminal_id INT,
    victim_id INT,
    officer_id INT,
    fir_date DATE NOT NULL,
    FOREIGN KEY (crime_id) REFERENCES Crime(crime_id),
    FOREIGN KEY (criminal_id) REFERENCES Criminal(criminal_id),
    FOREIGN KEY (victim_id) REFERENCES Victim(victim_id),
    FOREIGN KEY (officer_id) REFERENCES Police_Officer(officer_id)
);
INSERT INTO Crime (crime_type, crime_date, location)
VALUES ('Theft', '2025-01-10', 'Mumbai');

INSERT INTO Police_Officer (officer_name, Ranks, station)
VALUES ('Sahil Shukla', 'Inspector', 'Andheri Police Station');

INSERT INTO Criminal (name, age, address)
VALUES ('Rohit Sharma', 28, 'Mumbai');

INSERT INTO Victim (victim_name, contact, address)
VALUES ('Amit Verma', '9876543210', 'Mumbai');

INSERT INTO FIR (crime_id, criminal_id, victim_id, officer_id, fir_date)
VALUES (1, 1, 1, 1, '2025-01-11');
SELECT * FROM Crime;
select * from  Police_Officer;
INSERT INTO Crime (crime_type, crime_date, location) VALUES
('Theft', '2025-01-01', 'Mumbai'),
('Robbery', '2025-01-02', 'Pune'),
('Cyber Crime', '2025-01-03', 'Nagpur'),
('Murder', '2025-01-04', 'Nashik'),
('Fraud', '2025-01-05', 'Thane'),
('Domestic Violence', '2025-01-06', 'Aurangabad'),
('Kidnapping', '2025-01-07', 'Solapur'),
('Assault', '2025-01-08', 'Kolhapur'),
('Burglary', '2025-01-09', 'Satara'),
('Drug Trafficking', '2025-01-10', 'Mumbai'),
('Chain Snatching', '2025-01-11', 'Pune'),
('Forgery', '2025-01-12', 'Nagpur'),
('Rape', '2025-01-13', 'Nanded'),
('Human Trafficking', '2025-01-14', 'Beed'),
('Money Laundering', '2025-01-15', 'Mumbai'),
('Hit and Run', '2025-01-16', 'Thane'),
('Cyber Fraud', '2025-01-17', 'Pune'),
('Vehicle Theft', '2025-01-18', 'Nashik'),
('Arson', '2025-01-19', 'Jalgaon'),
('Public Nuisance', '2025-01-20', 'Mumbai'),
('Illegal Gambling', '2025-01-21', 'Nagpur'),
('Pick Pocketing', '2025-01-22', 'Pune'),
('Online Scam', '2025-01-23', 'Mumbai'),
('Blackmailing', '2025-01-24', 'Latur'),
('Smuggling', '2025-01-25', 'Ratnagiri'),
('Extortion', '2025-01-26', 'Thane'),
('Identity Theft', '2025-01-27', 'Mumbai'),
('Hacking', '2025-01-28', 'Pune'),
('Illegal Arms', '2025-01-29', 'Akola'),
('Financial Scam', '2025-01-30', 'Amravati');
select * from Crime;
INSERT INTO Police_Officer (officer_name, Ranks, station) VALUES
('Amit Patil', 'Inspector', 'Mumbai Central'),
('Sahil Shukla', 'Inspector', 'Andheri'),
('Rohit Deshmukh', 'Sub Inspector', 'Pune City'),
('Neha Kulkarni', 'Sub Inspector', 'Shivajinagar'),
('Vikas More', 'Assistant Inspector', 'Thane'),
('Pooja Sharma', 'Inspector', 'Borivali'),
('Suresh Jadhav', 'Sub Inspector', 'Nashik Road'),
('Anjali Pawar', 'Inspector', 'Satara'),
('Rahul Bhosale', 'Assistant Inspector', 'Kolhapur'),
('Kiran Patankar', 'Sub Inspector', 'Solapur'),
('Sneha Joshi', 'Inspector', 'Nagpur'),
('Mahesh Shinde', 'Sub Inspector', 'Aurangabad'),
('Pravin Kadam', 'Inspector', 'Jalgaon'),
('Ritu Mehta', 'Assistant Inspector', 'Thane West'),
('Akash Chavan', 'Sub Inspector', 'Vashi'),
('Nitin Kulkarni', 'Inspector', 'Pimpri'),
('Shweta Desai', 'Inspector', 'Kalyan'),
('Ganesh More', 'Sub Inspector', 'Dombivli'),
('Aarti Patil', 'Assistant Inspector', 'Panvel'),
('Yogesh Sawant', 'Inspector', 'Malad'),
('Sunil Gaikwad', 'Sub Inspector', 'Chembur'),
('Priya Nair', 'Inspector', 'Ghatkopar'),
('Deepak Rane', 'Assistant Inspector', 'Bhandup'),
('Komal Patil', 'Sub Inspector', 'Ulhasnagar'),
('Sanjay Pawar', 'Inspector', 'Worli'),
('Meenal Joshi', 'Assistant Inspector', 'Byculla'),
('Rakesh Singh', 'Sub Inspector', 'Kurla'),
('Pallavi Kulkarni', 'Inspector', 'Bandra'),
('Vijay Salunkhe', 'Assistant Inspector', 'Vasai'),
('Anand Deshpande', 'Inspector', 'Virar');
select * from  Police_Officer;
INSERT INTO Criminal (name, age, address) VALUES
('Rohit Sharma', 28, 'Mumbai'),
('Amit Verma', 32, 'Pune'),
('Suresh Patil', 40, 'Nashik'),
('Rahul Jadhav', 26, 'Nagpur'),
('Vikas Deshmukh', 35, 'Aurangabad'),
('Kiran Pawar', 30, 'Thane'),
('Mahesh Shinde', 45, 'Kolhapur'),
('Anil Kadam', 38, 'Satara'),
('Pravin More', 29, 'Solapur'),
('Nitin Chavan', 34, 'Jalgaon'),
('Sachin Bhosale', 27, 'Mumbai'),
('Deepak Patil', 41, 'Pune'),
('Ganesh Gaikwad', 36, 'Akola'),
('Yogesh Kulkarni', 33, 'Amravati'),
('Sunil Rane', 48, 'Ratnagiri'),
('Ramesh Sawant', 39, 'Sindhudurg'),
('Vijay Salunkhe', 31, 'Beed'),
('Sanjay Koli', 44, 'Palghar'),
('Manoj Naik', 37, 'Panvel'),
('Ajay Pande', 25, 'Nanded'),
('Prakash Yadav', 42, 'Latur'),
('Shubham Mishra', 24, 'Bhandara'),
('Rohit Malhotra', 29, 'Mumbai'),
('Imran Khan', 35, 'Malegaon'),
('Arjun Singh', 34, 'Pune'),
('Sameer Shaikh', 28, 'Mumbai'),
('Kunal Mehta', 31, 'Thane'),
('Salman Ansari', 39, 'Mumbra'),
('Harish Joshi', 46, 'Udaipur'),
('Pankaj Tiwari', 27, 'Nagpur');
select * from Criminal;
INSERT INTO Victim (victim_name, contact, address) VALUES
('Amit Verma', '9876543210', 'Mumbai'),
('Neha Patil', '9876543211', 'Pune'),
('Rahul Sharma', '9876543212', 'Nashik'),
('Priya Kulkarni', '9876543213', 'Nagpur'),
('Suresh Jadhav', '9876543214', 'Aurangabad'),
('Anjali Deshmukh', '9876543215', 'Thane'),
('Vikas More', '9876543216', 'Kolhapur'),
('Sneha Pawar', '9876543217', 'Satara'),
('Rohit Bhosale', '9876543218', 'Solapur'),
('Pooja Shinde', '9876543219', 'Jalgaon'),
('Kiran Chavan', '9876543220', 'Mumbai'),
('Meena Joshi', '9876543221', 'Pune'),
('Sachin Gaikwad', '9876543222', 'Akola'),
('Ritu Patankar', '9876543223', 'Amravati'),
('Sunil Rane', '9876543224', 'Ratnagiri'),
('Komal Naik', '9876543225', 'Sindhudurg'),
('Yogesh Salunkhe', '9876543226', 'Beed'),
('Sanjay Koli', '9876543227', 'Palghar'),
('Manisha Pande', '9876543228', 'Panvel'),
('Ajay Mishra', '9876543229', 'Nanded'),
('Prakash Yadav', '9876543230', 'Latur'),
('Shubham Thakur', '9876543231', 'Bhandara'),
('Rohini Malhotra', '9876543232', 'Mumbai'),
('Imran Sheikh', '9876543233', 'Malegaon'),
('Arjun Singh', '9876543234', 'Pune'),
('Sameera Shaikh', '9876543235', 'Mumbai'),
('Kunal Mehta', '9876543236', 'Thane'),
('Saloni Ansari', '9876543237', 'Mumbra'),
('Harish Joshi', '9876543238', 'Udaipur'),
('Pankaj Tiwari', '9876543239', 'Nagpur');
select * from Victim;
INSERT INTO FIR (crime_id, criminal_id, victim_id, officer_id, fir_date) VALUES
(1, 1, 1, 1, '2025-01-02'),
(2, 2, 2, 2, '2025-01-03'),
(3, 3, 3, 3, '2025-01-04'),
(4, 4, 4, 4, '2025-01-05'),
(5, 5, 5, 5, '2025-01-06'),
(6, 6, 6, 6, '2025-01-07'),
(7, 7, 7, 7, '2025-01-08'),
(8, 8, 8, 8, '2025-01-09'),
(9, 9, 9, 9, '2025-01-10'),
(10, 10, 10, 10, '2025-01-11'),
(11, 11, 11, 11, '2025-01-12'),
(12, 12, 12, 12, '2025-01-13'),
(13, 13, 13, 13, '2025-01-14'),
(14, 14, 14, 14, '2025-01-15'),
(15, 15, 15, 15, '2025-01-16'),
(16, 16, 16, 16, '2025-01-17'),
(17, 17, 17, 17, '2025-01-18'),
(18, 18, 18, 18, '2025-01-19'),
(19, 19, 19, 19, '2025-01-20'),
(20, 20, 20, 20, '2025-01-21'),
(21, 21, 21, 21, '2025-01-22'),
(22, 22, 22, 22, '2025-01-23'),
(23, 23, 23, 23, '2025-01-24'),
(24, 24, 24, 24, '2025-01-25'),
(25, 25, 25, 25, '2025-01-26'),
(26, 26, 26, 26, '2025-01-27'),
(27, 27, 27, 27, '2025-01-28'),
(28, 28, 28, 28, '2025-01-29'),
(29, 29, 29, 29, '2025-01-30'),
(30, 30, 30, 30, '2025-01-31');
select * from FIR;
SELECT 
    FIR.fir_id,
    Crime.crime_type,
    Criminal.name AS criminal_name,
    Victim.victim_name,
    Police_Officer.officer_name,
    FIR.fir_date
FROM FIR
JOIN Crime ON FIR.crime_id = Crime.crime_id
JOIN Criminal ON FIR.criminal_id = Criminal.criminal_id
JOIN Victim ON FIR.victim_id = Victim.victim_id
JOIN Police_Officer ON FIR.officer_id = Police_Officer.officer_id;
SELECT crime_type, COUNT(*) AS total_cases
FROM Crime
GROUP BY crime_type;
SELECT crime_type, COUNT(*) AS total_cases
FROM Crime
GROUP BY crime_type;
SELECT location, COUNT(*) AS total_crimes
FROM Crime
GROUP BY location;
SELECT officer_id, COUNT(*) AS total_firs
FROM FIR
GROUP BY officer_id;
SELECT crime_date, COUNT(*) AS crimes_on_date
FROM Crime
GROUP BY crime_date;
SELECT crime_type, COUNT(*) AS total_cases
FROM Crime
GROUP BY crime_type;
SELECT crime_date, COUNT(*) AS crimes_on_date
FROM Crime
GROUP BY crime_date;
SELECT location, COUNT(*) AS total_crimes
FROM Crime
GROUP BY location
HAVING COUNT(*) > 2;
SELECT 
    Police_Officer.officer_name,
    COUNT(FIR.fir_id) AS total_firs
FROM FIR
JOIN Police_Officer 
ON FIR.officer_id = Police_Officer.officer_id
GROUP BY Police_Officer.officer_name;
SELECT location, COUNT(*) AS total_crimes
FROM Crime
GROUP BY location;
SELECT officer_id, COUNT(*) AS total_firs
FROM FIR
GROUP BY officer_id;
SELECT location, COUNT(*) AS total_crimes
FROM Crime
GROUP BY location
HAVING COUNT(*) > 2;
select * from Criminal;
CREATE DATABASE crime_report_db;
USE crime_report_db;
SELECT 
    FIR.fir_id,
    Crime.crime_type,
    Criminal.name AS criminal_name,
    Victim.victim_name,
    Police_Officer.officer_name,
    FIR.fir_date
FROM FIR
JOIN Crime ON FIR.crime_id = Crime.crime_id
JOIN Criminal ON FIR.criminal_id = Criminal.criminal_id
JOIN Victim ON FIR.victim_id = Victim.victim_id
JOIN Police_Officer ON FIR.officer_id = Police_Officer.officer_id;
USE crime_report_db;
select * from Crime;
select * from FIR;
USE crime_report_db;
select * from Crime;
select * from FIR;
SELECT 
    FIR.fir_id,
    Crime.crime_type,
    Criminal.name AS criminal_name,
    Victim.victim_name,
    Police_Officer.officer_name,
    FIR.fir_date
FROM FIR
JOIN Crime ON FIR.crime_id = Crime.crime_id
JOIN Criminal ON FIR.criminal_id = Criminal.criminal_id
JOIN Victim ON FIR.victim_id = Victim.victim_id
JOIN Police_Officer ON FIR.officer_id = Police_Officer.officer_id;
USE crime_report_db;
select * from Crime ;
USE crime_report_db;









