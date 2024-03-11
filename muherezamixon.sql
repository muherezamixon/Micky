CREATE DATABASE PHARMACY ;
USE PHARMACY;
CREATE TABLE Patients (patient_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(25),address VARCHAR(25),phone_number VARCHAR(20),email VARCHAR(25),
date_of_birth DATE,insurance_provider VARCHAR(100),
insurance_policy_number VARCHAR(25),emergency_contact_name VARCHAR(25),
emergency_contact_phone VARCHAR(20));
INSERT INTO Patients (name, address, phone_number, email, date_of_birth, insurance_provider, insurance_policy_number, emergency_contact_name, emergency_contact_phone)
VALUES
('cynthia_all', 'kashaka', '+256774579942', 'cynthia@gmail', '1989-05-15', 'uganda_insuring_company', '12345', 'micky', '+256774488688'),
('t_Bruce', 'mbarara', '+25699993736','tbruce@gmail', '1999-05-25', 'uganda_insuring_company', '12346', 'melly', '+2567744937392'),
('patience', 'Ishaka', '+2567745624639', 'patience@gmail', '2000-05-15', 'uganda_insuring_company', '12347', 'Olly', '+256774453637'),
('Melly', 'Booma', '+256774578877', 'melly@gmail', '2001-09-02', 'uganda_insuring_company', '12348', 'Kevin', '+256774443600'),
('Ashaba', 'Booma', '+25677457000', 'ashaba@gmail', '2002-12-04', 'uganda_insuring_company', '12349', 'bryan ', '+256774449037'),
('Andy', 'kakyeeka', '+25677457000', 'andy@gmail', '2002-12-28', 'uganda_insuring_company', '12350', 'ivan', '+2567778343637'),
('Abaaho', 'kashaka', '+25677457000', 'abaaho@gmail', '1999-12-15', 'uganda_insuring_company', '12351', 'Emerx ', '+256774836078'),
('Aine', 'katete', '+25677457000', 'aine@gmail', '2002-12-15', 'uganda_insuring_company', '12352', 'Ocin', '+256774443630'),
('Amanya', 'kihumuro', '+25677457000', 'amanya@gmail', '2003-09-15', 'uganda_insuring_company', '12353', 'modern ', '+256774443687'),
('Atwine', 'kashaka', '+25677457000', 'atwine@gmail', '2004-10-10', 'uganda_insuring_company', '12354', 'Tyson ', '+2567744436321');
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25),
    specialization VARCHAR(25),
    phone_number VARCHAR(20),
    email VARCHAR(25),
    pharmacy_address VARCHAR(25),
    pharmacy_phone VARCHAR(20));
    INSERT INTO Doctors (name, specialization, phone_number, email, pharmacy_address, pharmacy_phone)
VALUES
('Dr.Kevin','dentist', '+254781464565','dr.kevin@gmail.com','Bishop_willis_street','+256878788938' ),
('Dr.Oscar', 'pharmacistt', '+254781464565', 'dr.Oscar@gmail.com','Bishop_willis_street','+256878788938'),
('Dr.Ozi', 'dentist', '+254781464565', 'dr.ozi@gmail.com', 'Bishop_willis_street','+256878788938'),
('Dr.Raheem', 'skin_doctor', '+254781464565', 'dr.raheem@gmail.com','Bishop_willis_street','+256878788938'),
('Dr.Elvis', 'laboratory', '+254781464565','dr.Elvis@gmail.com','Bishop_willis_street','+256878788938'),
('Dr.Daisy','midwife','+254781464565','dr.daisy@gmail.com', 'Bishop_willis_street','+256878788938'),
('Dr.cosum','councellor','+254781464565','cosum@gmail.com','Bishop_willis_street','+256878788938'),
('Dr.Oslo', 'dispensor', '+254781464565', 'dr.Oslo@gmail.com', 'bamukama_pharmacy', '+25675522722'),
('Dr.kangwagye', 'surgeon', '+254781464565', 'dr.kangwagye@gmail.com', 'Bishop_willis_street', '+2567552222'),
('Dr. Cathy', 'dentist', '+254781464565', 'dr.cathy@gmail.com', 'bamukama_pharmacy', '+25675522722');
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    instructions TEXT,
    status VARCHAR(50),
    refill_count INT,
    notes TEXT,
    dosage_form VARCHAR(100),
    prescription_type VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
INSERT INTO Prescriptions (patient_id, doctor_id, date, instructions, status, refill_count, notes, dosage_form, prescription_type)
VALUES
(1, 1, '2024-02-01', 'Take one tablet daily with food.', 'Active', 3, 'None', 'Tablet', 'Maintenance'),
(2, 2, '2024-02-22', 'Take two tablets twice daily.', 'Active', 2, 'None', 'Tablet', 'Acute'),
(3, 3, '2024-01-09', 'Apply cream to affected area three times a day.', 'Active', 1, 'None', 'Cream','timely'),
(4, 4, '2024-01-13', 'swallow one daily with milk.', 'Active', 1, 'None', 'tablet', 'maintenance'),
(5, 5, '2024-02-23', 'swallow 2 per week.', 'Active', 1, 'None', 'tablet', 'maintenance'),
(6, 6, '2024-03-06', 'take 2liters of water every 5hours.', 'Active', 2, 'None', 'water', 'timely'),
(7, 7, '2024-03-11', 'swallow one every morning.','Active', 2, 'None', 'tablet', 'Topical'),
(8, 8, '2024-03-04', 'come every week for check up.', 'Active', 3, 'None', 'counciling', 'timely'),
(9, 9, '2024-03-05', 'take before sleep.', 'Active', 1, 'None', 'Cream', 'Topical'),
(10, 10,'2024-03-03', 'Apply cream to affected area two times a day.', 'Active', 1, 'None', 'Cream', 'Topical');
CREATE TABLE Medications (
    medication_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    manufacturer VARCHAR(255),
    dosage VARCHAR(50),
    quantity_in_stock INT,
    expiration_date DATE,
    unit_price DECIMAL(10,2),
    category VARCHAR(100),
    description TEXT,
    dosage_form VARCHAR(100)
);
INSERT INTO Medications (name, manufacturer, dosage, quantity_in_stock, expiration_date, unit_price, category, description, dosage_form)
VALUES
('Aspirin', 'uganda_medical_stores', '500mg', 100, '2024-12-01', 5.99, 'Pain Relief', 'Pain reliever and fever reducer.', 'Tablet'),
('Amoxicillin', 'Pfizer', '250mg', 50, '2023-10-01', 9.99, 'Antibiotic', 'Treats bacterial infections.', 'Capsule'),
('Lisinopril', 'Merck', '10mg', 75, '2024-06-01', 7.50, 'Hypertension', 'Lowers blood pressure.', 'Tablet'),
('coartem', 'MUST', '250mg', 50, '2023-10-01', 9.99, 'Antibiotic', 'Treats malaria infections.', 'Capsule'),
('coughtum', 'Pfizer', '200mg', 50, '2023-10-01', 9.99, 'Antibiotic', 'Treats cough.', 'tablet'),
('Amozin', 'Pfizer', '250mg', 50, '2023-10-01', 9.99, 'Antibiotic', 'Treats bacterial infections.', 'injection'),
('headex', 'MUST', '100mg', 10, '2023-10-01', 9.99, 'Antibiotic', 'painkiller.', 'tablet'),
('azima', 'joint_medical', '250mg', 50, '2023-10-01', 9.99, 'Antifungal', 'Treats fungal infections.', 'injection'),
('covidex', 'MUST', '250mg', 50, '2023-10-01', 9.99, 'antivirus', 'Treats virus infections.', 'injection'),
('panadol', 'Pfizer', '50mg', 50, '2023-10-01', 9.99, 'Antibiotic', 'Treats bacterial infections.', 'tablet');
CREATE TABLE Prescribed_Medications (
    prescription_medication_id INT AUTO_INCREMENT PRIMARY KEY,
    prescription_id INT,
    medication_id INT,
    dosage VARCHAR(50),
    frequency VARCHAR(100),
    duration INT,
    instructions TEXT,
    dispensed_quantity INT,
    dispense_date DATE,
    refill_count INT,
    FOREIGN KEY (prescription_id) REFERENCES Prescriptions(prescription_id),
    FOREIGN KEY (medication_id) REFERENCES Medications(medication_id));
    INSERT INTO Prescribed_Medications (prescription_id, medication_id, dosage, frequency, duration, instructions, dispensed_quantity, dispense_date, refill_count)
VALUES
(1, 1, '500mg', 'Once Daily', 30, 'Take one tablet daily with food.', 30, '2024-03-01', 2),
(2, 2, '250mg', 'Twice Daily', 7, 'Take two capsules twice daily.', 28, '2024-03-02', 1),
(3, 3, '100mg', 'Three Times Daily', 14, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 0),
(4, 4, '100mg', 'four Times Daily', 21, 'take after food.', 42, '2024-03-03', 0),
(5, 5, '120mg', 'two Times Daily', 21, 'swallow after taking water.', 42, '2024-03-03', 3),
(6, 6, '120mg', 'two Times Daily', 12, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 5),
(7, 7, '150mg', 'Three Times Daily', 14, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 4),
(8, 8, '160mg', 'two', 14, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 2),
(9, 9, '140mg', 'Three Times Daily', 14, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 2),
(10, 10, '150mg', 'Three Times Daily', 14, 'Apply cream to affected area three times a day.', 42, '2024-03-03', 0);
CREATE TABLE Pharmacies (
    pharmacy_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    manager_name VARCHAR(255),
    opening_hours VARCHAR(100),
    website VARCHAR(255),
    services_offered TEXT,
    accreditation_status VARCHAR(50));
    INSERT INTO Pharmacies (name, address, phone_number, email, manager_name, opening_hours, website, services_offered, accreditation_status)
VALUES
('bishop_willis_sreet','Mbarara','+25674538363','bishopclinic@gmail.com','oscar','7:00am_to_4:00pm','www.bishopclinic.com','testing,treatment','accredited'),
('bamukama','Mbarara','+25674538363','bamukama@gmail.com','oscar','7:00am_to_4:00pm','www.bamukamalinic.com','testing,treatment','accredited'),
('mk','Mbarara','+25674538363','mkclinic@gmail.com','Obram','7:00am_to_4:00pm','www.mk.clinic.com','testing,treatment','accredited'),
('cynthia','Mbarara','+25674538363','cynthiaclinic@gmail.com','kevin','7:00am_to_4:00pm','www.cynthia.com','testing,treatment','accredited'),
('mukamaakiza','Mbarara','+25674538363','mukamaakiza@gmail.com','olga','7:00am_to_4:00pm','www.mukamaakiza.com','testing,treatment','accredited'),
('Afaayo','katete','+25674538363','Afaayolinic@gmail.com','oscar','7:00am_to_4:00pm','www.Afaayoclinic.com','testing,treatment','accredited'),
('tokamanya','kakoba','+25674538363','tokamanya@gmail.com','andy','7:00am_to_4:00pm','www.tokamanyaclinic.com','testing,treatment','accredited'),
('Godscare','Mbarara','+25674538363','Godscare@gmail.com','ritah','7:00am_to_4:00pm','www.Godscare.com','testing,treatment','accredited'),
('almni','rwebikoona','+25674538363','almni@gmail.com','rodgers','7:00am_to_4:00pm','www.almniclinic.com','testing,treatment','accredited'),
('kateteclinic','katete','+25674538363','kateteclinic@gmail.com','yasin','7:00am_to_4:00pm','www.kateteclinic.com','testing,treatment','accredited');
CREATE TABLE sales( 
sales_id INT  primary key,total_amount INT,patient_id INT,
payment_status varchar(10));
INSERT INTO sales(sales_id,total_amount,patient_id,payment_status)
VALUES
(1,'100000','1','paid'),
(2,'100000','1','due'),
(3,'100000','1','cleared'),
(4,'100000','1','overdue'),
(5,'100000','1','paid'),
(6,'100000','1','paid'),
(7,'100000','1','paid'),
(8,'100000','1','paid'),
(9,'100000','1','paid'),
(10,'100000','1','paid');
create table payments(payment_id int primary key,sales_id INT,payment_date VARCHAR(10),amount_paid VARCHAR(10),payment_status VARCHAR(10));
INSERT INTO payments(payment_id,sales_id,payment_date,amount_paid,payment_status)
VALUES
(1,1,'2024-03-1','400000','due'),
(2,1,'2024-03-1','40000','paid'),
(3,1,'2024-03-1','10000','paid'),
(10,1,'2024-03-1','80000','due'),
(4,1,'2024-03-1','50000','due'),
(5,1,'2024-03-1','40000','due'),
(6,1,'2024-03-1','400000','due'),
(7,1,'2024-03-1','6000040','due'),
(8,1,'2024-03-1','400000','due'),
(9,1,'2024-03-1','40000','due');
CREATE TABLE feedback(pharmacy_id INT primary key, patient_id INT,comments VARCHAR(100),rating varchar(5));
INSERT INTO feedback(pharmacy_id, patient_id,comments,rating)
VALUES 
(1,1,'a very hospitable clinic','1'),
(2,9,'a very hospitable clinic','2'),
(3,2,'a very hospitable clinic','5'),
(4,4,'a very hospitable clinic','4'),
(5,2,'a very hospitable clinic','4'),
(6,2,'a very hospitable clinic','4'),
(7,6,'a very hospitable clinic','2'),
(8,2,'a very hospitable clinic','3'),
(8,7,'a very hospitable clinic','2');
