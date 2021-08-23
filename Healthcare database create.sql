

CREATE TABLE PATIENTS (
  
  PATIENTID INT AUTO_INCREMENT  PRIMARY KEY,
  FIRSTNAME VARCHAR(25),
  LASTNAME VARCHAR(25),
  DOB DATE ,
  GENDER VARCHAR(25),
  ADDRESS VARCHAR(100),
  PHONE INT,
  DISEASE VARCHAR(25),
  BLOODGROUP VARCHAR(5) 
  
);



CREATE TABLE MEDICAL_HISTORY (
   
   PATIENTID INT ,
   is_DIABETIC BIT,
   has_HEARTPROBLEMS BIT,
   is_ASTHAMATIC BIT,
   has_HIV BIT,
   CONSTRAINT FK_MED_HIST_Info FOREIGN KEY  (PATIENTID) References PATIENTS(PATIENTID)

);

CREATE TABLE MEDICINES (
   
    PATIENTID INT,
    MEDS VARCHAR(25),
    SYRINGES_NO INT ,
   	CONSTRAINT FK_PATIENTMEDS_Info FOREIGN KEY  (PATIENTID) References PATIENTS(PATIENTID)
);

CREATE TABLE EMPLOYEES (
   EMPID INT auto_increment primary KEY,
   EMP_NAME VARCHAR(25),
   EMP_DEPT VARCHAR(25)


);

CREATE TABLE EMPLOYEE_INFO (
  EMPID INT ,
  GENDER VARCHAR(25),
  AGE INT,
  PHONENUMBER INT,
  JOINED_0N DATE,
   	CONSTRAINT FK_EMPLOYEE_Info FOREIGN KEY  (EMPID) References EMPLOYEES(EMPID)

);



CREATE TABLE DOCTORS (

  DOCTORID INT  PRIMARY KEY,
  DOCTORNAME VARCHAR(25),
  DEPT VARCHAR(25)
  
  );
  
  CREATE TABLE DOCTOR_INFO (
  DOCTORID INT ,
  GENDER VARCHAR(25),
  AGE INT,
  PHONENUMBER INT,
  JOINED_0N DATE,
   	CONSTRAINT FK_DOCTOR_Info FOREIGN KEY  (DOCTORID) References DOCTORS(DOCTORID)

);
  

  
  
CREATE TABLE ROOM (
 ROOM_NO INT  PRIMARY KEY,
 ROOM_TYPE VARCHAR(25),
 STATUS  VARCHAR(20)     /*   || OCCUPIED / AVAILABLE || */
);
  
  
  
CREATE TABLE BILL (
  
    BILL_NO INT  PRIMARY KEY,
    DOCTOR_CHARGE INT,
    ROOM_CHARGE INT ,
    NO_OF_DAYS INT 
    
  );
  
  CREATE TABLE FEEDBACK(
    
    FROMPATIENTID INT,
    TO_DOCTORID INT,
    T0_EMPID INT,
    COMMENTS VARCHAR(100),
    HOSPITAL_RATING VARCHAR(15),
    CREATED_ON DATE,
	CONSTRAINT FK_FEEDBACK_Info FOREIGN KEY  (FROMPATIENTID) References PATIENTS(PATIENTID)
  );
  
  CREATE TABLE OPERATIONROOM(
     OPER_ID INT PRIMARY KEY,
     DATE DATE ,
     NURSE VARCHAR(25)
    );
    
    CREATE TABLE INPATIENT (
    
    INPATIENT_ID INT primary KEY ,
    ROOM_ID INT ,
    DATE_ADM DATE,
    DATE_DIS DATE
    );
    
  
   CREATE TABLE PATIENTINFO (
       
      
	   PATIENTID INT ,
       INPATIENT_ID INT,
	   DOCTORID INT  ,
	   SERVED_EMPLOYEEID INT,
	   ROOM_NO INT   ,
	   BILL_NO INT   ,
       OPER_ID INT   ,
    
  	CONSTRAINT FK_PATIENT_Info FOREIGN KEY  (PATIENTID) References PATIENTS(PATIENTID),
	CONSTRAINT FK_INPATIENT_Info FOREIGN KEY  (INPATIENT_ID) References INPATIENT(INPATIENT_ID),
	CONSTRAINT FK_DOCTOR_PATIENT_Info FOREIGN KEY  (DOCTORID) References DOCTORS(DOCTORID),
	CONSTRAINT FK_ROOM_Info FOREIGN KEY  (ROOM_NO) References ROOM( ROOM_NO),
	CONSTRAINT FK_BILL_Info FOREIGN KEY (BILL_NO) References BILL(BILL_NO) ,
    CONSTRAINT FK_OPERATIONROOM_Info FOREIGN KEY (OPER_ID) References OPERATIONROOM(OPER_ID),
	CONSTRAINT FK_SERVEDEMPLOYEE_Info FOREIGN KEY  (SERVED_EMPLOYEEID) References EMPLOYEES(EMPID)

   );
  
  
  
  
  
  
  
  
  
  