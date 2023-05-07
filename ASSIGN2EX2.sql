CREATE DATABASE DB;
CREATE TABLE CONTACTS
(ID INT PRIMARY KEY NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
FNAME VARCHAR(30) NOT NULL,
LNAME VARCHAR(30),
COMPANY VARCHAR(30) NOT NULL,
ACTVE_FLAG INT NOT NULL,
OPT_OUT INT NOT NULL);

INSERT INTO CONTACTS VALUES
(123,'a@a.com','Kian','Seth','ABC',1,1),
(133,'b@a.com','Neha','Seth','ABC',1,0),
(234,'c@c.com','Puru','Malik','CDF',0,0),
(342,'d@d.com','Sid','Maan','TEG',1,0);
select * FROM CONTACTS;

-- 1. select all columns from the contact table where the active flag=1  
SELECT * FROM CONTACTS WHERE ACTVE_FLAG=1;

-- 2. Deactivate  contacts who are opted out
UPDATE CONTACTS SET ACTVE_FLAG = 0 WHERE OPT_OUT=1;

-- 3. Delete  all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACTS WHERE COMPANY='ABC';

-- 4. Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACTS VALUES(685,'mili@gmail.com','mili',null,'DGH',1,1);

-- 5. Pull out the unique values of the company column 
select distinct company from contacts;

-- 6. Update name “mili” to “niti”.
update contacts set FNAME='niti' where FNAME='mili';



