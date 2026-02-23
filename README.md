🚔 Crime Report Management System
📌 Project Title

Crime Report Management System

👩‍💻 Developed By

Tanvi Zore
Roll No: 2542058

📖 Project Description

The Crime Report Management System is a database-based application developed to manage crime records efficiently. This system helps police departments to store, manage, and retrieve information about crimes, criminals, victims, FIR records, and police officers.
The main objective of this project is to reduce manual paperwork and provide a computerized system for managing crime-related data securely and efficiently.

🎯 Objectives

To maintain records of crimes and FIR details.

To store information about criminals and victims.

To manage police officer records.

To perform advanced database queries.

To ensure secure and fast data retrieval.

To reduce manual documentation work.

🛠️ Technologies Used

Database: MySQL

Language: SQL

Tool: MySQL Workbench / XAMPP

Platform: Windows

🗂️ Database Tables

The system contains the following tables:

Crime

Criminal

Victim

Police_Officer

FIR

Each table is connected using primary and foreign keys to maintain relationships.

🔗 Database Relationships

One Crime can have multiple FIR records.

One Criminal can be involved in multiple crimes.

One Police Officer can handle multiple FIR cases.

Each FIR is linked with one Crime, one Criminal, one Victim, and one Police Officer.

⚙️ Features

Add new crime records

Add criminal details

Add victim information

Assign police officers

Generate FIR records

Perform JOIN queries

Use GROUP BY, HAVING, Subqueries

Create Views

Transaction management

🧪 System Testing

The system has been tested for:

Query correctness

Data accuracy

Relationship validation

Constraint checking

All SQL queries were successfully executed in MySQL.

📊 Sample Query
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
🚀 Future Enhancements

Add login authentication system

Add GUI interface

Online complaint registration

Report generation in PDF format

Data backup and recovery

📌 Conclusion

The Crime Report Management System successfully manages crime-related data in a structured format using SQL. It improves efficiency, accuracy, and security in handling crime records compared to the traditional manual system.
