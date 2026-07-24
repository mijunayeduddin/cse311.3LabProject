CREATE DATABASE IF NOT EXISTS cse311_project_db;
USE cse311_project_db;

CREATE TABLE IF NOT EXISTS student_reg (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  phone VARCHAR(30),
  dob DATE,
  country VARCHAR(100),
  address VARCHAR(255),
  university_name VARCHAR(150),
  student_id VARCHAR(50) UNIQUE,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS faculty_reg (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  phone VARCHAR(30),
  dob DATE,
  country VARCHAR(100),
  university_name VARCHAR(150),
  password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS student_archive (
  archive_id INT AUTO_INCREMENT PRIMARY KEY,
  student_reg_id INT NOT NULL,
  company_name VARCHAR(150) NOT NULL,
  company_address VARCHAR(255),
  company_city VARCHAR(100),
  company_country VARCHAR(100),
  company_department VARCHAR(150),
  company_position VARCHAR(150),
  required_skills TEXT,
  start_date DATE,
  end_date DATE,
  faculty_email VARCHAR(150),
  verification_status VARCHAR(20) DEFAULT 'Pending',
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

INSERT INTO student_reg (first_name, last_name, email, phone, dob, country, address, university_name, student_id, password) 
VALUES 
('Kamrul', 'Hasan', 'kamrul.hasan@northsouth.edu', '+8801333333333', '2000-09-12', 'Bangladesh', 'Mirpur 10, Dhaka', 'North South University', '2012345642', 'hashed_dummy_pwd_5'),
('Farhana', 'Haque', 'farhana.h@aiub.edu', '+8801444444444', '2001-03-08', 'Bangladesh', 'Kuril, Dhaka', 'American International University-Bangladesh', '21-45678-1', 'hashed_dummy_pwd_6'),
('Tanvir', 'Ahmed', 'tanvir.ahmed@ewubd.edu', '+8801666666666', '1999-12-30', 'Bangladesh', 'Aftabnagar, Dhaka', 'East West University', '2020-1-60-045', 'hashed_dummy_pwd_7');

INSERT INTO faculty_reg (first_name, last_name, email, phone, dob, country, university_name, password) 
VALUES 
('Dr. Salma', 'Begum', 'salma.begum@aiub.edu', '+8801755555555', '1982-11-05', 'Bangladesh', 'American International University-Bangladesh', 'hashed_dummy_pwd_8'),
('Dr. Syed', 'Asif', 'syed.asif@ewubd.edu', '+8801866666666', '1975-06-20', 'Bangladesh', 'East West University', 'hashed_dummy_pwd_9');

INSERT INTO student_archive (student_reg_id, company_name, company_address, company_city, company_country, company_department, company_position, required_skills, start_date, end_date, faculty_email, verification_status, work_description) 
VALUES 
(3, 'bKash', 'Shadhinata Tower, Bir Sreshtha Shaheed Jahangir Gate', 'Dhaka', 'Bangladesh', 'Product Development', 'Software QA Intern', 'Manual Testing, Selenium, Jira', '2025-06-01', '2025-09-01', 'amanullah.shah@northsouth.edu', 'Pending', 'Conducted automated and manual testing for new payment gateway features.'),
(4, 'Brain Station 23', 'Mahakhali Commercial Area', 'Dhaka', 'Bangladesh', 'Web Development', 'Frontend Developer Intern', 'React, Tailwind CSS, JavaScript', '2025-01-10', '2025-04-10', 'salma.begum@aiub.edu', 'Approved', 'Built responsive dashboard UI components for an international client project.'),
(5, 'TigerIT', 'Banani Model Town', 'Dhaka', 'Bangladesh', 'Database Administration', 'DBA Intern', 'Oracle, MySQL, Linux', '2025-02-01', '2025-05-01', 'syed.asif@ewubd.edu', 'Pending', 'Assisted in database migration and monitored daily backup logs.'),
(3, 'Robi Axiata', 'Robi Corporate Office, Gulshan', 'Dhaka', 'Bangladesh', 'IT Operations', 'Network Intern', 'Cisco Networking, Wireshark', '2024-05-01', '2024-08-01', 'amanullah.shah@northsouth.edu', 'Approved', 'Monitored internal network traffic and assisted in router configuration setups.');
