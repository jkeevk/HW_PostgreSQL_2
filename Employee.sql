CREATE TABLE IF NOT EXISTS department (
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	superior_id INTEGER REFERENCES employee(employee_id),
	department_id INTEGER REFERENCES department(department_id)
);