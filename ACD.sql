//QUESTION 1
CREATE TABLE INSTRUCTOR(
INS_ID INT PRIMARY KEY NOT NULL,
INS_FNAME VARCHAR(255) NOT NULL,
INS_SNAME VARCHAR(255) NOT NULL,
INS_CONTACT INT NOT NULL,
INS_LEVEL INT NOT NULL
);

CREATE TABLE CUSTOMER (
CUST_ID VARCHAR(25) PRIMARY KEY NOT NULL,
CUST_FNAME VARCHAR(255) NOT NULL,
CUST_SNAME VARCHAR(255) NOT NULL,
CUST_ADDRESS VARCHAR(255) NOT NULL,
CUST_CONTACT INT NOT NULL
);

CREATE TABLE DIVE(
DIVE_ID INT PRIMARY KEY NOT NULL,
DIVE_NAME VARCHAR(255) NOT NULL,
DIVE_DURATION VARCHAR(25) NOT NULL,
DIVE_LOCATION VARCHAR(255) NOT NULL,
DIVE_EXP_LEVEL INT NOT NULL,
DIVE_COST INT NOT NULL
);

CREATE TABLE  DIVE_EVENT(
DIVE_EVENT_ID VARCHAR(50) PRIMARY KEY NOT NULL,
DIVE_DATE DATE NOT NULL,
DIVE_PARTICIPANTS VARCHAR(255) NOT NULL,
INS_ID INT NOT NULL,
CUST_ID VARCHAR(25) NOT NULL,
DIVE_ID INT NOT NULL,
CONSTRAINT FK_INS_ID FOREIGN KEY (INS_ID)
REFERENCES INSTRUCTOR(INS_ID),
CONSTRAINT FK_CUST_ID FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
CONSTRAINT FK_DIVE_ID FOREIGN KEY (DIVE_ID) REFERENCES DIVE(DIVE_ID)
);

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(101, 'James', 'Willis', 843569851, 7);

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(102, 'Sam', 'Wait', 763698521, 2);

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(103, 'Sally', 'Gumede', 786598521, 8);

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(104, 'Bob', 'Du Preez', 796369857, 3);

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(105, 'Simon', 'Jones', 826598741, 9);




INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C115', 'Heinrich', 'Willis', '3 Main Road', 821253659);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C116', 'David', 'Watson', '13 Cape Road', 769685847);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C117', 'Waldo', 'Smith', '3 Mountain Road', 836255674);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C118', 'Alex', 'Hanson', '8 Circle Road', 763256587);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C119', 'Kuhle', 'Bitterhout', '15 Main Road', 821232528);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C120', 'Thando', 'Zolani', '88 Summer Road', 847541254);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C121', 'Philip', 'Jackson', '3 Long Road', 745556658);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C122', 'Sarah', 'Jones', '7 Sea Road', 814745745);

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C123', 'Catherine', 'Howard', '31 Lake Side Road', 822232521);



INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(550, 'Shark Dive', '3 hours', 'Shark Point', 8, 500);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(551, 'Coral Dive', '1 hour', 'Break Point', 7, 300);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(552, 'Wave Crescent', '2 hours', 'Ship wreck ally', 3, 800);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(553, 'Underwater Exploration', '1 hour', 'Coral ally', 2, 250);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(554, 'Underwater Adventure', '3 hours', 'Sandy Beach', 3, 750);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(555, 'Deep Blue Ocean', '30 minutes', 'Lazy Waves', 2, 120);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(556, 'Rough Seas', '1 hour', 'Pipe', 9, 700);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(557, 'White Water', '2 hours', 'Drifts', 5, 200);

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(558, 'Current Adventure', '2 hours', 'Rock Lands', 3, 150);



INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_101', TO_DATE('15-JUL-2017', 'DD-MON-YYYY'), 5, 103, 'C115', 558);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_102', TO_DATE('16-JUL-2017', 'DD-MON-YYYY'), 7, 102, 'C117', 555);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_103', TO_DATE('18-JUL-2017', 'DD-MON-YYYY'), 8, 104, 'C118', 552);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_104', TO_DATE('19-JUL-2017', 'DD-MON-YYYY'), 3, 101, 'C119', 551);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_105', TO_DATE('21-JUL-2017', 'DD-MON-YYYY'), 5, 104, 'C121', 558);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_106', TO_DATE('22-JUL-2017', 'DD-MON-YYYY'), 8, 105, 'C120', 556);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_107', TO_DATE('25-JUL-2017', 'DD-MON-YYYY'), 10, 105, 'C115', 554);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_108', TO_DATE('27-JUL-2017', 'DD-MON-YYYY'), 5, 101, 'C122', 552);

INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_109', TO_DATE('28-JUL-2017', 'DD-MON-YYYY'), 3, 102, 'C123', 553);

//QUESTION 2

-- 1. Administrator User
CREATE USER admin_user
IDENTIFIED BY  admin_password; -- Replace 'admin_password' with a strong password

/*
GRANT CREATE TABLE TO admin_user; -- Ability to create new tables
GRANT ALTER ANY TABLE TO admin_user; -- Ability to alter existing tables
GRANT DROP TABLE TO admin_user; -- Ability to drop tables
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.* TO admin_user; -- CRUD operations on all tables in dbo schema*/

-- 2. General User of the System
CREATE USER general_user
IDENTIFIED BY general_password; -- Replace 'general_password' with a strong password

-- Assign privileges to the General User
GRANT SELECT ON dbo.* TO general_user; -- Read access to all tables in dbo schema

-- Optionally, restrict access to certain tables:
-- REVOKE SELECT ON dbo.sensitive_table FROM general_user;

   
//QUESTION 3
SELECT 
    DISTINCT i.INS_FNAME || ', ' || i.INS_SNAME AS INSTRUCTOR,
    c.CUST_FNAME || ', ' || c.CUST_SNAME AS CUSTOMER,
    d.DIVE_LOCATION,
    e.DIVE_PARTICIPANTS
FROM 
    DIVE_EVENT e
JOIN 
    INSTRUCTOR i ON e.INS_ID = i.INS_ID
JOIN 
    CUSTOMER c ON e.CUST_ID = c.CUST_ID
JOIN 
    DIVE d ON e.DIVE_ID = d.DIVE_ID
WHERE 
    e.DIVE_PARTICIPANTS BETWEEN 8 AND 10;
    
//QUESTION 4

SET SERVEROUTPUT ON;

DECLARE
    CURSOR dive_cursor IS
        SELECT 
            d.DIVE_NAME, 
            e.DIVE_DATE, 
            e.DIVE_PARTICIPANTS
        FROM 
            DIVE_EVENT e
        JOIN 
            DIVE d ON e.DIVE_ID = d.DIVE_ID
        WHERE 
            e.DIVE_PARTICIPANTS >= 10;
    
    dive_rec dive_cursor%ROWTYPE;
    
BEGIN
    OPEN dive_cursor;
    
    LOOP
        FETCH dive_cursor INTO dive_rec;
        EXIT WHEN dive_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || dive_rec.DIVE_NAME);
        DBMS_OUTPUT.PUT_LINE('DIVE DATE: ' || TO_CHAR(dive_rec.DIVE_DATE, 'DD/MON/YY'));
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || dive_rec.DIVE_PARTICIPANTS);
        DBMS_OUTPUT.PUT_LINE('------------------------------');
    END LOOP;
    
    CLOSE dive_cursor;
END;
/

//QUESTION 5
SET SERVEROUTPUT ON;

DECLARE
    CURSOR dive_cursor IS
        SELECT 
            c.CUST_FNAME || ', ' || c.CUST_SNAME AS CUSTOMER_NAME,
            d.DIVE_NAME, 
            e.DIVE_PARTICIPANTS,
            d.DIVE_COST
        FROM 
            DIVE_EVENT e
        JOIN 
            CUSTOMER c ON e.CUST_ID = c.CUST_ID
        JOIN 
            DIVE d ON e.DIVE_ID = d.DIVE_ID
        WHERE 
            d.DIVE_COST > 500;

    dive_rec dive_cursor%ROWTYPE;
    num_instructors NUMBER;

BEGIN
    OPEN dive_cursor;
    
    LOOP
        FETCH dive_cursor INTO dive_rec;
        EXIT WHEN dive_cursor%NOTFOUND;
        
        -- Determine the number of instructors required
        IF dive_rec.DIVE_PARTICIPANTS <= 4 THEN
            num_instructors := 1;
        ELSIF dive_rec.DIVE_PARTICIPANTS BETWEEN 5 AND 7 THEN
            num_instructors := 2;
        ELSE
            num_instructors := 3;
        END IF;

        -- Display the results
        DBMS_OUTPUT.PUT_LINE('CUSTOMER: ' || dive_rec.CUSTOMER_NAME);
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || dive_rec.DIVE_NAME);
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || dive_rec.DIVE_PARTICIPANTS);
        DBMS_OUTPUT.PUT_LINE('STATUS: ' || num_instructors || ' instructors required.');
        DBMS_OUTPUT.PUT_LINE('------------------------------');
    END LOOP;
    
    CLOSE dive_cursor;
END;
/

//QUESTION 6

CREATE VIEW Vw_Dive_Event AS
SELECT DISTINCT
    e.INS_ID,
    e.CUST_ID,
    c.CUST_ADDRESS,
    d.DIVE_DURATION,
    e.DIVE_DATE
FROM 
    DIVE_EVENT e
JOIN 
    CUSTOMER c ON e.CUST_ID = c.CUST_ID
JOIN 
    DIVE d ON e.DIVE_ID = d.DIVE_ID
WHERE 
    e.DIVE_DATE < TO_DATE('19-JUL-2017', 'DD-MON-YYYY');

SELECT* FROM VW_DIVE_EVENT;


//QUESTION 7
CREATE OR REPLACE TRIGGER New_Dive_Event
BEFORE INSERT OR UPDATE ON DIVE_EVENT
FOR EACH ROW
BEGIN
    IF :NEW.DIVE_PARTICIPANTS <= 0 OR :NEW.DIVE_PARTICIPANTS > 20 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Number of participants must be between 1 and 20.');
    END IF;
END;
/


BEGIN
    INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
    VALUES ('de_110', TO_DATE('30-JUL-17', 'DD-MON-YY'), 0, 101, 'C125', 550);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/


BEGIN
    INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
    VALUES ('de_112', TO_DATE('30-JUL-17', 'DD-MON-YY'), 5, 101, 'C127', 552);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/

BEGIN
    UPDATE DIVE_EVENT
    SET DIVE_PARTICIPANTS = 25
    WHERE DIVE_EVENT_ID = 'de_112';
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/

//QUESTION 8

CREATE OR REPLACE PROCEDURE sp_Customer_Details (
    p_CUST_ID IN VARCHAR2,
    p_DIVE_DATE IN DATE
)
IS
    v_CUST_FNAME CUSTOMER.CUST_FNAME%TYPE;
    v_CUST_SNAME CUSTOMER.CUST_SNAME%TYPE;
    v_DIVE_NAME DIVE.DIVE_NAME%TYPE;
    v_DIVE_FOUND BOOLEAN := FALSE;
BEGIN
    -- Fetch the customer and dive details
    SELECT 
        c.CUST_FNAME, 
        c.CUST_SNAME, 
        d.DIVE_NAME
    INTO 
        v_CUST_FNAME, 
        v_CUST_SNAME, 
        v_DIVE_NAME
    FROM 
        DIVE_EVENT e
    JOIN 
        CUSTOMER c ON e.CUST_ID = c.CUST_ID
    JOIN 
        DIVE d ON e.DIVE_ID = d.DIVE_ID
    WHERE 
        e.CUST_ID = p_CUST_ID
        AND e.DIVE_DATE = p_DIVE_DATE;
    
    v_DIVE_FOUND := TRUE;
    
    -- Display the result
    DBMS_OUTPUT.PUT_LINE('CUSTOMER DETAILS: ' || v_CUST_FNAME || ' ' || v_CUST_SNAME || 
                         ' booked for the ' || v_DIVE_NAME || ' on the ' || TO_CHAR(p_DIVE_DATE, 'DD/MON/YY') || '.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        IF NOT v_DIVE_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No booking found for customer ID ' || p_CUST_ID || ' on ' || TO_CHAR(p_DIVE_DATE, 'DD-MON-YY') || '.');
        END IF;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

BEGIN
    sp_Customer_Details('C115', TO_DATE('15-JUL-2017', 'DD-MON-YYYY'));
END;
/

//QUESTION 9

CREATE OR REPLACE FUNCTION fn_Total_Cost_By_Customer (
    p_CUST_ID IN VARCHAR2
) RETURN NUMBER
IS
    v_Total_Cost NUMBER := 0;
    v_Dive_Cost NUMBER;
BEGIN
    -- Cursor to fetch the cost of each dive for the given customer ID
    FOR dive_record IN (
        SELECT d.DIVE_COST
        FROM DIVE_EVENT e
        JOIN DIVE d ON e.DIVE_ID = d.DIVE_ID
        WHERE e.CUST_ID = p_CUST_ID
    ) LOOP
        v_Total_Cost := v_Total_Cost + dive_record.DIVE_COST;
    END LOOP;
    
    -- Return the total cost
    RETURN v_Total_Cost;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Handle the case when no dives are found for the given customer ID
        DBMS_OUTPUT.PUT_LINE('No dive events found for customer ID: ' || p_CUST_ID);
        RETURN 0;
    WHEN OTHERS THEN
        -- Handle other possible exceptions
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN 0;
END fn_Total_Cost_By_Customer;
/
//VALID CUSTOMER ID TEST CASE
DECLARE
    v_Total NUMBER;
BEGIN
    v_Total := fn_Total_Cost_By_Customer('C115');
    DBMS_OUTPUT.PUT_LINE('Total Cost for Customer C115: ' || v_Total);
END;
/

//INVALID CUSTOMER ID TEST CASE
DECLARE
    v_Total NUMBER;
BEGIN
    v_Total := fn_Total_Cost_By_Customer('C999'); -- Assuming C999 is an invalid customer ID
    DBMS_OUTPUT.PUT_LINE('Total Cost for Customer C999: ' || v_Total);
END;
/