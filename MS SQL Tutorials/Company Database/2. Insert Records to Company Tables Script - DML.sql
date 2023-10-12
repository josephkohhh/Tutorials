USE Company;

--This is DML

INSERT INTO SKILL (SkillName, Description) VALUES ('C','PLT'),('C++','OOPS'),('Java','Web'),('SQL','RDBMS'),('C#','Cloud')

INSERT INTO AREA (AreaName, ZipCode) VALUES ('AAA','12345'),('BBB','54321')

INSERT INTO Employee (Name, DOB, Area, Phone) VALUES ('Josh','1990-01-30','AAA','12345678'),('Mary','1994-06-21','AAA','11122278'),('Tom','1990-01-30','BBB','13335678')

INSERT INTO EmployeeSkill (EmpID,SkillName,SkillLevel) VALUES (1,'C','7'),(1,'C++','7'),(2,'Java','8'),(2,'SQL','6'),(3,'C','9')

INSERT INTO Project (ProjectID,ProjectName,EmpID) VALUES (1,'EDH',1),(2,'MyInfo',1),(3,'CorpPass',2),(4,'Homes',null)

