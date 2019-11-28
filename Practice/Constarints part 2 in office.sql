CREATE TABLE Employees 
    (EmpID INT NOT NULL , 
        EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate DATETIME NULL,
	   PRIMARY KEY(EmpID,EmpName)
    )

	--alter table Employees add constraint EmpID_pk primary key(EmpID)

CREATE TABLE Employeestable 
    (EmpID INT NOT NULL primary key,  
        EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate DATETIME NULL,
		age smallint check(age>23),
	  
    )

	
	--foreign key(EmpID) references Employees(EmpID), 