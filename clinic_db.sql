-- Command to create the database 

-- DROP DATABASE IF EXISTS clinic_db;
-- CREATE DATABASE clinic_db;
USE clinic_db;

-- CREATING ALL TABLE STRUCTURES
-- ROLES TABLE
-- CREATE TABLE roles(
-- role_id INT primary KEY auto_increment,
-- role_name VARCHAR(50) NOT NULL UNIQUE,
-- description VARCHAR(255)
-- );

-- USERS TABLE
-- CREATE TABLE users(
-- user_id INT PRIMARY KEY AUTO_INCREMENT,
-- role_id INT NOT NULL,
-- email VARCHAR(100) NOT NULL UNIQUE,
-- password VARCHAR(255) NOT NULL,
-- Full_name VARCHAR (50) NOT NULL,
-- phone VARCHAR(20),
-- is_active BOOLEAN DEFAULT TRUE,
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- FOREIGN KEY(role_id) REFERENCES roles(role_id)
-- );

-- SPECIALITIES TABLE
-- CREATE TABLE specialities(
-- speciality_id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR (100) NOT NULL UNIQUE,
-- description VARCHAR(255)
-- );

-- DOCTORS TABLE
-- CREATE TABLE doctors (
-- doctor_id INT PRIMARY KEY AUTO_INCREMENT,
-- user_id INT NOT NULL,
-- speciality_id INT NOT NULL,
-- license_number VARCHAR(50) UNIQUE,
-- consultation_fee DECIMAL(10,2) NOT NULL,
-- FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
-- FOREIGN KEY (speciality_id) REFERENCES specialities(speciality_id)
-- );

-- PATIENTS TABLES
-- CREATE TABLE patients(
-- patient_id INT PRIMARY KEY AUTO_INCREMENT,
-- user_id INT UNIQUE,
-- date_of_birth DATE NOT NULL,
-- gender ENUM('male', 'female', 'other') NOT NULL,
-- blood_group VARCHAR(5),
-- allergies TEXT,
-- medical_conditions TEXT,
-- FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
-- );

-- -- SCHEDULES TABLE
-- CREATE TABLE schedules (
-- schedule_id INT PRIMARY KEY AUTO_INCREMENT,
-- doctor_id INT NOT NULL,
-- day_of_the_week ENUM ('Monday', 'Tuesday', 'Wednsday', 'Thursday', 'Friday', 'Saturday', 'Sunday'),
-- start_time TIME NOT NULL,
-- end_time TIME NOT NULL,
-- is_active BOOLEAN DEFAULT TRUE,
-- FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE,
-- CONSTRAINT chk_schedule_time CHECK (end_time > start_time)
-- );

-- APPOINTMENT STATUS TABLE
-- CREATE TABLE appointment_status (
-- status_id INT PRIMARY KEY AUTO_INCREMENT,
-- status_name VARCHAR(50) NOT NULL UNIQUE
-- );

-- APPOINTMENT TABLE
-- CREATE TABLE appointments (
-- appointment_id INT PRIMARY KEY AUTO_INCREMENT,
-- patient_id INT NOT NULL,
-- doctor_id INT NOT NULL,
-- appointment_date DATE NOT NULL,
-- start_time TIME NOT NULL,
-- end_time TIME NOT NULL,
-- status_id INT NOT NULL,
-- reason VARCHAR(255),
-- notes TEXT,
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
-- FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
-- FOREIGN KEY (status_id) REFERENCES appointment_status(status_id)
-- );

-- MEDICAL RECORDS TABLE
-- CREATE TABLE medical_records(
-- record_id INT PRIMARY KEY AUTO_INCREMENT,
-- appointment_id INT NOT NULL,
-- diagnosis TEXT,
-- treatmenr TEXT,
-- prescription TEXT,
-- follow_up_needed BOOLEAN DEFAULT FALSE,
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
-- );

-- Insert roles
-- INSERT INTO roles (role_name, description) VALUES
-- ('Admin', 'System administrator with full access'),
-- ('Doctor', 'Medical professional who sees patients'),
-- ('Patient', 'Person seeking medical care'),
-- ('Receptionist', 'Front desk staff handling appointments');

-- Insert specialties
-- INSERT INTO specialities (name, description) VALUES
-- ('General Medicine', 'Primary healthcare and general diagnosis'),
-- ('Cardiology', 'Heart and cardiovascular system'),
-- ('Pediatrics', 'Medical care for infants, children and adolescents'),
-- ('Dermatology', 'Skin conditions and treatments'),
-- ('Orthopedics', 'Bone and joint conditions');

-- -- Insert appointment statuses
-- INSERT INTO appointment_status (status_name) VALUES
-- ('Scheduled'),
-- ('Completed'),
-- ('Cancelled'),
-- ('No-show'),
-- ('Rescheduled');
