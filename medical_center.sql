DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE doctor
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
);


CREATE TABLE patient
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,

);

CREATE TABLE doctor_patient
(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCE ON patient,
    doctor_id INTEGER REFERENCE ON doctor,
);


CREATE TABLE disease
(
    id SERIAL PRIMARY KEY,
    disease TEXT NOT NULL,
    patient_id INTEGER REFERENCE ON patient,
);

