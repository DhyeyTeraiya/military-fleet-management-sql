
Create database hospital_db;
use hospital_db;



UPDATE hp
SET visit_date = STR_TO_DATE(visit_date, '%d-%m-%Y');

ALTER TABLE hp
MODIFY COLUMN visit_date DATE;


--  Increase all paid_amount by 5% for “Insurance” payments
UPDATE hp
SET paid_amount = paid_amount * 1.05
WHERE payment_method = 'Insurance';

-- o	Correct any visit records where age < 1 → set to NULL
UPDATE hp
SET age = NULL
WHERE age < 1;

-- o	Delete records where billing_amount = 0
DELETE FROM hp
WHERE billing_amount = 0;

-- Delete visits by patients marked as “invalid” (manually set one)
ALTER TABLE hp
ADD COLUMN record_status VARCHAR(20) DEFAULT 'valid';

SELECT * FROM hp


UPDATE hp
SET record_status = 'invalid'
WHERE patient_id = 'PAT2309';



SELECT *
FROM hp
WHERE record_status = 'invalid';

DELETE FROM hp
WHERE record_status = 'invalid';

-- Total revenue, paid revenue, outstanding revenue
SELECT 
    SUM(billing_amount) AS total_revenue,
    SUM(paid_amount) AS paid_revenue,
    SUM(billing_amount - paid_amount) AS outstanding_revenue
FROM hp;

-- Revenue by doctor
SELECT 
    doctor_name,
    SUM(billing_amount) AS total_revenue
FROM hp
GROUP BY doctor_name;

-- Revenue by department
SELECT 
    department,
    SUM(billing_amount) AS total_revenue
FROM hp
GROUP BY department;

-- Top 10 patients by spending
SELECT 
    patient_id,
    patient_name,
    SUM(billing_amount) AS total_spent
FROM hp
GROUP BY patient_id, patient_name
ORDER BY total_spent DESC
LIMIT 10;

-- Monthly revenue trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(visit_date, '%d-%m-%Y'), '%m-%Y') AS month,
    SUM(billing_amount) AS total_revenue
FROM hp
GROUP BY month
ORDER BY month;

-- Average billing per visit type (OPD/IPD/Emergency)
SELECT 
    visit_type,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM hp
GROUP BY visit_type;

-- Count of visits requiring follow-up
SELECT COUNT(*) AS follow_up_count
FROM hp
WHERE follow_up_flag = 1;

-- List all visits with patient name + doctor name + department
SELECT 
    patient_name,
    doctor_name,
    department
FROM hp;

-- Get all procedures performed along with billing amounts
SELECT 
	 visit_date,
    patient_name,
    doctor_name,
    procedure_description,
    billing_amount
FROM hp;

-- Patients whose visit count is above average visit count
SELECT 
    patient_id,
    COUNT(*) AS visit_count
FROM hp
GROUP BY patient_id
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM hp
        GROUP BY patient_id
    ) t
);


-- Visits where billing is above patient’s own average billing
SELECT 
    visit_date,
    patient_id,
    patient_name,
    billing_amount
FROM hp h1
WHERE billing_amount > (
    SELECT AVG(billing_amount)
    FROM hp h2
    WHERE h2.patient_id = h1.patient_id
);


-- Doctors with revenue higher than average doctor revenue
SELECT 
    doctor_name,
    SUM(billing_amount) AS total_revenue
FROM hp
GROUP BY doctor_name
HAVING SUM(billing_amount) > (
    SELECT AVG(doctor_revenue)
    FROM (
        SELECT 
            doctor_name,
            SUM(billing_amount) AS doctor_revenue
        FROM hp
        GROUP BY doctor_name
    ) t
);


-- Running total of daily revenue
SELECT
    visit_date,
    SUM(billing_amount) AS daily_revenue,
    SUM(SUM(billing_amount)) OVER (
        ORDER BY visit_date
    ) AS running_total_revenue
FROM hp
GROUP BY visit_date
ORDER BY visit_date desc;

-- Ranking doctors based on total revenue
 SELECT
    doctor_name,
    SUM(billing_amount) AS total_revenue,
    RANK() OVER (ORDER BY SUM(billing_amount) DESC) AS revenue_rank
FROM hp
GROUP BY doctor_name
ORDER BY revenue_rank;


-- --------------------------


-- Monthly_Billing_Summary view
CREATE VIEW Monthly_Billing_Summary AS
SELECT 
    DATE_FORMAT(visit_date, '%Y-%m') AS month,       
    COUNT(*) AS total_visits,
    SUM(billing_amount) AS total_revenue,
    SUM(paid_amount) AS paid_revenue,
    SUM(billing_amount - paid_amount) AS outstanding_revenue
FROM hp
GROUP BY DATE_FORMAT(visit_date, '%Y-%m')
ORDER BY month;

SELECT * FROM Monthly_Billing_Summary;


-- Doctor_Performance view (total visits, revenue, avg billing)
CREATE VIEW Doctor_Performance AS
SELECT
    doctor_name,

    COUNT(*) AS total_visits,
    SUM(billing_amount) AS total_revenue,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM hp
GROUP BY doctor_name;

SELECT * FROM Doctor_Performance;

-- High_Value_Patients view (billing > ₹X threshold)
CREATE VIEW Patient_Billing_Summary AS
SELECT
    patient_id,
    patient_name,
    SUM(billing_amount) AS total_billing,
    COUNT(*) AS total_visits,
    ROUND(AVG(billing_amount), 2) AS avg_billing
FROM hp
GROUP BY patient_id, patient_name;

SELECT *
FROM Patient_Billing_Summary
WHERE total_billing > 5000; 