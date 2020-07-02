DROP DATABASE IF EXISTS emp_trackerDB;
CREATE database emp_trackerDB;

USE emp_trackerDB;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY(id)
);

INSERT INTO department (name, id)
VALUES ("Sales", 1), ("Develop", 2), ("Accounting", 3), ("Marketing", 4), ("Manager", 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Salesman", 65000, 1), ("Developer", 90000, 2), ("Accountant", 70000, 3), ("Analyst", 80000, 4), ("Manager", 60000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Leslie", "Knope", 5, 1), ("Ben", "Wyatt", 5, 2), ("Jim", "Halpert", 4, NULL), ("Pam", "Beesly", 3, NULL), ("Toby", "Flenderson", 2, NULL);

USE emp_trackerDB;

SELECT * 
FROM emp_trackerDB;