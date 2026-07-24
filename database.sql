CREATE DATABASE IF NOT EXISTS cse311_project_db;
USE cse311_project_db;

CREATE TABLE IF NOT EXISTS student_reg (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  phone VARCHAR(30),
  dob DATE,
  country VARCHAR(100),
  address VARCHAR(255),
  university_name VARCHAR(150),
  student_id VARCHAR(50),
  password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS faculty_reg (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  phone VARCHAR(30),
  dob DATE,
  country VARCHAR(100),
  university_name VARCHAR(150),
  password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS student_archive (
  archive_id INT AUTO_INCREMENT PRIMARY KEY,
  student_reg_id INT,
  company_name VARCHAR(150),
  company_address VARCHAR(255),
  company_city VARCHAR(100),
  company_country VARCHAR(100),
  company_department VARCHAR(150),
  company_position VARCHAR(150),
  required_skills TEXT,
  start_date DATE,
  end_date DATE,
  faculty_email VARCHAR(150),
  verification_status VARCHAR(20),
  work_description TEXT,
  FOREIGN KEY (student_reg_id) REFERENCES student_reg(id)
);


INSERT INTO student_reg (first_name, last_name, email, phone, dob, country, address, university_name, student_id, password) 
VALUES 
('Rahim', 'Uddin', 'rahim.uddin@northsouth.edu', '+8801711111111', '2001-05-14', 'Bangladesh', 'Bashundhara R/A, Dhaka', 'North South University', '2011567842', 'hashed_dummy_pwd_1'),
('Sadia', 'Rahman', 'sadia.rahman@bracu.ac.bd', '+8801822222222', '2002-11-22', 'Bangladesh', 'Mohakhali, Dhaka', 'BRAC University', '21301456', 'hashed_dummy_pwd_2');


INSERT INTO faculty_reg (first_name, last_name, email, phone, dob, country, university_name, password) 
VALUES 
('Amanullah', 'Shah', 'amanullah.shah@northsouth.edu', '+8801933333333', '1985-08-10', 'Bangladesh', 'North South University', 'hashed_dummy_pwd_3'),
('Tariq', 'Hasan', 'tariq.hasan@bracu.ac.bd', '+8801544444444', '1978-02-15', 'Bangladesh', 'BRAC University', 'hashed_dummy_pwd_4');

INSERT INTO student_archive (student_reg_id, company_name, company_address, company_city, company_country, company_department, company_position, required_skills, start_date, end_date, faculty_email, verification_status, work_description) 
VALUES 
(1, 'Grameenphone', 'GP House, Bashundhara', 'Dhaka', 'Bangladesh', 'Software Engineering', 'Backend Engineering Intern', 'PHP, MySQL, API Development', '2025-05-01', '2025-08-01', 'amanullah.shah@northsouth.edu', 'Approved', 'Developed backend REST APIs for internal resource tracking and optimized legacy MySQL queries.'),
(2, 'Pathao', 'Faraque Rupayan Tower, Banani', 'Dhaka', 'Bangladesh', 'Data Analytics', 'Data Analyst Intern', 'Python, SQL, Tableau', '2026-01-15', '2026-04-15', 'tariq.hasan@bracu.ac.bd', 'Pending', 'Analyzed rider retention metrics using SQL and visualized the dataset trends using Tableau.');
