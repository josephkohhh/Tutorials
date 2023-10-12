--CREATE DATABASE Company;

USE Company;

--This is DDL 

CREATE TABLE Skill 
(SkillName VARCHAR(20) PRIMARY KEY, 
Description VARCHAR(1000))

--sp_help Skill

CREATE TABLE Area
(AreaName VARCHAR(20) PRIMARY KEY,
ZipCode CHAR(6))

--sp_help Area

CREATE TABLE Employee
(EmpID INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
DOB DATE,
Area VARCHAR(20) FOREIGN KEY REFERENCES Area(AreaName),
Phone VARCHAR(20))

--sp_help Employee

CREATE TABLE EmployeeSkill
(EmpID INT FOREIGN KEY REFERENCES Employee(EmpID),
SkillName VARCHAR(20) FOREIGN KEY REFERENCES Skill(SkillName),
SkillLevel  CHAR(1),
PRIMARY KEY(EmpID, SkillName))

--sp_help EmployeeSkill

CREATE TABLE Project 
(ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(20),
EmpID INT FOREIGN KEY REFERENCES Employee(EmpID))

--sp_help Project

--DROP TABLE Skill
--DROP TABLE Area
--DROP TABLE Employee
--DROP TABLE EmployeeSkill
--DROP TABLE Project

