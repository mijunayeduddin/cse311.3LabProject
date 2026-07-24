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
