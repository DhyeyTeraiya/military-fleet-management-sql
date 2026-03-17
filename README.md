# ⚔️ Indian Army Fleet Management System — SQL Project

<p align="center">
  <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Domain-Defense%20Analytics-1a3a6b?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/SQL-Advanced%20Queries-orange?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge"/>
</p>

---

## 📌 Project Overview

This project implements a **comprehensive SQL database system** for managing and analyzing the **Indian Army's vehicle fleet**. It includes real-world military vehicle data, covering everything from Main Battle Tanks to armored ambulances — enabling operational readiness tracking, fuel management, sector-wise deployment analysis, and manufacturer performance reporting.

> 🎯 **Goal**: Build a robust relational database system for Indian Army fleet management with real-time operational analytics through advanced SQL queries.

---

## 🚗 Fleet Data Coverage

| Vehicle Category | Models Included |
|-----------------|-----------------|
| 🪖 Main Battle Tanks | Ajeya (T-72), Bhishma (T-90S) |
| 🛡️ Infantry Fighting Vehicles | Sarath (BMP-2 upgrade) |
| 🚌 Armored Personnel Carriers | Kestrel 8x8 |
| 🎯 ATGM Carriers | NAMICA |
| 🚙 Light Support Vehicles | Tata Merlin, Tata Safari Storme |
| 💣 Mine Protected Vehicles | MPVI |
| 🚛 Heavy Transport Trucks | Tata 6x6, Ashok Leyland |
| 🔧 Specialty Vehicles | VBPR, Armored Bridge Launcher, Mobile CP, NBCV |
| 🏥 Armored Ambulances | Medical APC |
| 🏃 Rapid Action Vehicles | Mahindra Bolero Pik-Up |
| 👁️ Surveillance Vehicles | Tata Sumo Gold |

---

## 📁 Project Structure

```
sql-defense-project/
├── 🗄️ dhyey_defense_project_B8.sql    # Main fleet management database
├── 🗄️ hospital_bill_b8(dhyey).sql     # Hospital billing analytics
├── 🗄️ dhyey_worker_b8.sql             # Worker management database
└── 📄 README.md                         # Project documentation
```

---

## 🗄️ Database Schema

### `indian_army_fleet` Table

```sql
CREATE TABLE indian_army_fleet (
    vehicle_id       VARCHAR(10) PRIMARY KEY,
    vehicle_type     VARCHAR(50),
    model_name       VARCHAR(50),
    status           VARCHAR(20),        -- Active, Maintenance, Repair
    sector_location  VARCHAR(50),
    mission_type     VARCHAR(50),        -- Border Patrol, Counter-Insurgency, etc.
    last_maintenance DATE,
    fuel_level       INT,                -- Percentage 0-100
    crew_assigned    INT,
    manufacturer     VARCHAR(50)
);
```

---

## 📊 SQL Queries Implemented

### ✅ Operational Queries

| # | Query | Purpose |
|---|-------|---------|
| 1 | Active Combat Vehicles | Identify border patrol-ready vehicles |
| 2 | Fleet Readiness Report | Vehicle type breakdown by status |
| 3 | Sector-wise Deployment | Resources per sector with crew strength |
| 4 | Critical Fuel Alert | Vehicles needing immediate resupply (<50%) |
| 5 | Maintenance Status | Vehicles under repair/maintenance |
| 6 | Manufacturer Performance | Operational percentage per manufacturer |

### 🔬 Advanced SQL Techniques Used

```sql
-- Window Functions
RANK() OVER (ORDER BY ...)
SUM() OVER (ORDER BY ...)
ROUND(AVG()) OVER (PARTITION BY ...)

-- Subqueries
WHERE value > (SELECT AVG(value) FROM table)

-- Aggregate Functions
COUNT(*), SUM(), AVG(), MAX(), MIN()

-- CASE statements
SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END)

-- GROUP BY + HAVING
GROUP BY vehicle_type HAVING COUNT(*) > 5
```

---

## 🏥 Hospital Billing Analytics Module

The `hospital_bill_b8(dhyey).sql` file includes a complete hospital billing system with:

- **Revenue Analysis**: Total, paid, and outstanding revenue tracking
- **Doctor Performance**: Revenue rankings using window functions
- **Patient Analytics**: High-value patient identification
- **Department Analysis**: Revenue breakdown by department
- **Views Created**:
  - `Monthly_Billing_Summary` — Monthly revenue aggregation
  - `Doctor_Performance` — Doctor KPI tracking
  - `Patient_Billing_Summary` — Patient spending profiles

---

## 👷 Worker Management System

The `dhyey_worker_b8.sql` demonstrates core SQL concepts:

- CRUD operations (SELECT, INSERT, UPDATE, DELETE)
- Filtering with WHERE, LIKE, IN, BETWEEN
- Sorting with ORDER BY (ASC/DESC)
- Aggregate functions (MAX, MIN, AVG, COUNT, SUM)
- Subqueries and nested SELECT statements
- Pattern matching with LIKE

---

## 🔍 Sample Query Results

```sql
-- Fleet Readiness Summary
SELECT vehicle_type,
       COUNT(*) as total,
       SUM(CASE WHEN status='Active' THEN 1 ELSE 0 END) as active,
       ROUND(100.0 * SUM(CASE WHEN status='Active' THEN 1 ELSE 0 END)/COUNT(*), 2) as readiness_pct
FROM indian_army_fleet
GROUP BY vehicle_type;
```

| Vehicle Type | Total | Active | Readiness % |
|-------------|-------|--------|-------------|
| Main Battle Tank | 8 | 6 | 75.00% |
| Armored Personnel Carrier | 8 | 7 | 87.50% |
| Infantry Fighting Vehicle | 8 | 6 | 75.00% |
| Light Support Vehicle | 8 | 6 | 75.00% |

---

## 🚀 How to Run

### Using MySQL
```bash
# Start MySQL
mysql -u root -p

# Run the defense project
source dhyey_defense_project_B8.sql;

# Run hospital billing
source hospital_bill_b8(dhyey).sql;

# Run worker management
source dhyey_worker_b8.sql;
```

### Using MySQL Workbench
1. Open MySQL Workbench
2. File → Open SQL Script → Select file
3. Click **Execute** (⚡ button)

---

## 💼 Real-World Applications

- 🛡️ **Defense Management**: Track vehicle readiness for mission deployment
- 🔧 **Maintenance Scheduling**: Identify vehicles due for service
- ⛽ **Fuel Logistics**: Optimize resupply routes based on low-fuel alerts
- 📊 **Resource Planning**: Sector-wise crew and vehicle allocation
- 🏥 **Healthcare BI**: Hospital revenue optimization and doctor performance tracking

---

## 👤 Author

**Dhyey Teraiya** — Batch 8, Data Analytics Student

- 🐙 GitHub: [@DhyeyTeraiya](https://github.com/DhyeyTeraiya)
- 💼 LinkedIn: [Dhyey Teraiya](https://linkedin.com/in/dhyey-teraiya)

---

## 📄 License

This project is licensed under the **MIT License**.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

⭐ **Star this repo if you found it useful!** ⭐

> *"SQL is not just a query language — it's the language of data intelligence."*
