CREATE TABLE Employee_Titles (
    Title_ID VARCHAR PRIMARY KEY ,
    Title VARCHAR  NOT NULL ,
    PRIMARY KEY (
        Title_ID
    )
);

CREATE TABLE Employees (
    Emp_ID INTEGER PRIMARY KEY ,
    Emp_Title VARCHAR  NOT NULL ,
    Birth_Date DATE  NOT NULL ,
    First_Name VARCHAR  NOT NULL ,
    Last_Name VARCHAR  NOT NULL ,
    Sex CHAR  NOT NULL ,
    Hire_Date TIMESTAMP NOT NULL ,
    FOREIGN KEY(Emp_Title) REFERENCES employee_titles (title_id)
);

CREATE TABLE Departments (
    Dept_No VARCHAR PRIMARY KEY NOT NULL ,
    Dept_Name VARCHAR  NOT NULL 
);

CREATE TABLE Department_Employee (
    Emp_No INTEGER  NOT NULL ,
    Dept_Num VARCHAR  NOT NULL,
	FOREIGN KEY(Emp_No) REFERENCES employees (emp_id),
	FOREIGN KEY(Dept_Num) REFERENCES departments (dept_no)
);


CREATE TABLE Department_Manager (
    Dept_Num VARCHAR  NOT NULL ,
    Dept_Mgr INTEGER  NOT NULL,
	FOREIGN KEY(Dept_Num) REFERENCES Departments (Dept_No),
	FOREIGN KEY(Dept_Mgr) REFERENCES Employees (Emp_ID)
);


CREATE TABLE Employee_Salary (
    Emp_No INTEGER  NOT NULL ,
    Salary FLOAT  NOT NULL,
	FOREIGN KEY(Emp_No) REFERENCES Employees (Emp_ID)
);
