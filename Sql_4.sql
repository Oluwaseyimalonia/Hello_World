--CREATE A TABLE--
CREATE TABLE Student(
Student_name VARCHAR(500), --  Datatype is varchar, 500 is the lenght of the letters--
Sex VARCHAR(10),
DOB VARCHAR(20),
Student_admissionnumber INTEGER,--- Admission is numeric. Datatype for numeric is Integer--
State_of_Origin VARCHAR(500),
Town  VARCHAR(500),
PRIMARY KEY(Student_name, Student_admissionnumber) --Making the two columns unique.--
)

--CHECKING IF THE TABLE RUNS--
SELECT *  FROM [dbo].[Student]

--INSERT DATA INTO THE TABLE--THREE ROWS WAS CREATED AND RUN ONE AFTER THE OTHER
INSERT INTO [dbo].[Student] VALUES('Malonia', 'Female', '13-02-1980', 2508, 'Osun','Osogbo')
--('Taiwo', 'Male', '07-11-1990', 2509,'Ekiti', 'Oyan')--
--('Olajide', 'Female', '26-08-1991', 2568, 'Oyo' ,'Gbongan')--

--TRUNCATE TABLE--
TRUNCATE TABLE [dbo].[Student]  --TRUNCATE ONLY DELETE THE DATA IN THE TABLE-

--DROP TABLE--
DROP TABLE [dbo].[Student]  --DROP TABLE DELETE THE TABLE OF THE DATABASE



--CREATE A NEW COLUMN FOR THE TABLE--
ALTER TABLE  [dbo].[Student] ADD Admission_Year float

--UPDATE THE EMPTY COLOUMN---
UPDATE [dbo].[Student] SET Admission_Year=Student_admissionnumber-600

--AND, OR METHOD--
SELECT * FROM [dbo].[Student] WHERE DOB= '07-11-1990' OR DOB= '13-02-1980'
SELECT * FROM [dbo].[Student] WHERE DOB= '07-11-1990' OR Sex= 'Female'
SELECT * FROM [dbo].[Student] WHERE DOB= '07-11-1990' AND Sex= 'Female'
--NOTE- THIS SHOWS THREE SET OF TABLES WHEN IT RUNS---

--DROPING A COLUMN OF A TABLE--
--Note: WE CREATED A NEW COLUMN OF THE TABLE BY ALTER TABL, THEREFORE WE CAN DROP THE SAME COLUMN WITH ALTER TABLE--
ALTER TABLE [dbo].[Student]
DROP COLUMN Admission_Year
--AT EVERY ITERATION IT IS OK WE CHECK RECHECK OUR TABLE---