drop database if exists hospital;

-- create database
create database hospital;
use hospital;
-- create table
create table Patients (
Patient_id int,
Patient_Name varchar(20),
Age int,
Gender varchar(10),
AdmissionDate date
);

-- Alter Table
alter table patients
add DoctorAssigned varchar(20);

-- Modify column
alter table patients Modify Patient_Name varchar(30);


-- Rename the table(run this separately)
rename table Patients to Patients_info;

-- truncate table
truncate table Patients_info;

-- Drop table
drop table patients_info;





 


 