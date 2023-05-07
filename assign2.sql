create database consultdoc;

create table doctor
(doc_id int primary key not null,
doc_name varchar(30) not null,
specializaton varchar(50), 
experience float);

insert into doctor values
(101,'Dr.ANNI','CARDIOLOGIST',5),
(102,'Dr.SAM','DERMATOLOGIST',15),
(103,'Dr.RANI','PEDIATRICIAN',10),
(104,'Dr.ANU','NEUTOLOGIST',8),
(105,'Dr.ARUN','ENDOCRINOLOGIST',13);

SELECT * FROM DOCTOR;

-- 
CREATE TABLE APPOINTMENTS
(DOC_ID INT NOT NULL,
APPOINTMENT_DATE DATE,
APPOINTMENT_ID INT PRIMARY KEY NOT NULL,
APPOINTMENT_TIME TIME );

INSERT INTO APPOINTMENTS VALUES
(101,'2023-05-05',5001,'11:45:00');
INSERT INTO APPOINTMENTS VALUES
(105,'2023-06-07',5002,'09:30:00'),
(103,'2023-05-12',5003,'17:30:00'),
(101,'2023-06-01',5004,'18:00:00'),
(103,'2023-05-25',5005,'10:30:00'),
(102,'2023-06-04',5006,'15:45:00');

SELECT * FROM APPOINTMENTS;

--
CREATE TABLE PATIENTS
(PATIENT_NAME VARCHAR(30) NOT NULL,
AGE INT NOT NULL,
APPOINTMENT_ID INT PRIMARY KEY NOT NULL,
CONTACT_NUMBER INT NOT NULL);

INSERT INTO PATIENTS VALUES
('KAVYA',28,5001,9785684),
('ABHI',45,5002,5894551),
('BAVYA',33,5003,8945061),
('SRAVYA',50,5004,6587421),
('RAMYA',40,5005,6932581),
('SAMEER',30,5006,7896542);

SELECT * FROM PATIENTS;

--
CREATE TABLE REVIEWS
(PATIENT_ID INT PRIMARY KEY NOT NULL,DOC_ID INT NOT NULL,
REVIEW VARCHAR(100));

INSERT INTO REVIEWS VALUES
(5001,101,'GREAT'),
(5002,105,'GOOD'),
(5003,103,'AVERAGE'),
(5004,101,'GREAT'),
(5005,103,'NOT BAD'),
(5006,102,'GOOD');

SELECT * FROM REVIEWS;

