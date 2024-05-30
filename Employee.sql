CREATE TABLE IF NOT EXISTS superior (
	superior_id SERIAL PRIMARY KEY,
	name VARCHAR(30) UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS department (
	department_id SERIAL PRIMARY KEY,
	name VARCHAR(30) UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS employee (
	employee_id SERIAL PRIMARY KEY,
	superior_id INTEGER NOT NULL REFERENCES superior(superior_id),
	department_id INTEGER NOT NULL REFERENCES department(department_id),
	name VARCHAR(30) NOT NULL
);