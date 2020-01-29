-- Schema for setup of EmployeeSQL database
CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(30)
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  gender VARCHAR(3),
  hire_date DATE
);

CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(10),
  from_date DATE,
  to_date DATE,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10),
  emp_no INT,
  from_date DATE,
  to_date DATE,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
  emp_no INT PRIMARY KEY,
  salary BIGINT,
  from_date DATE,
  to_date DATE,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
  emp_no INT,
  title VARCHAR(50),
  from_date DATE,
  to_date DATE,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
