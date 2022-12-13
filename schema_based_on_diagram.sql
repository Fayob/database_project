CREATE TABLE patients (
	id serial PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth DATE
);

CREATE TABLE medical_histories (
	id serial PRIMARY KEY,
  admitted_at TIMESTAMP,
  patient_id INT REFERENCES patients(id),
  status VARCHAR(50)
);

CREATE TABLE treatments (
	id serial PRIMARY KEY,
  type VARCHAR (50),
  name VARCHAR (100)
);
